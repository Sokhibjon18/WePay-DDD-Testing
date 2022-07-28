import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/apartment/i_apartment_repository.dart';
import 'package:we_pay/domain/core/value_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/current_date_expense.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/models/roommates.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/domain/search/search_failure.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';
import 'package:rxdart/rxdart.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/screens/utils/functions.dart';

@LazySingleton(as: IApartmentRepository)
class ApartmentRepository implements IApartmentRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  ApartmentRepository(this._firestore, this._auth);

  @override
  Future<Either<ApartmentFailure, Unit>> create(Apartment apartment) async {
    try {
      final userId = _auth.currentUser!.uid;
      final apartmentId = const Uuid().v4();
      Apartment apartmentWithId = apartment.copyWith(
        uid: apartmentId,
        ownerId: userId,
        users: [userId],
      );
      await _firestore.apartment(apartmentId).set(apartmentWithId.toJson());
      await _firestore.addApartmentToUser(userId, apartmentId);
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const ApartmentFailure.serverError());
    }
  }

  @override
  Future<Either<ApartmentFailure, Unit>> delete(Apartment apartment) async {
    try {
      final apartmentId = apartment.uid!;
      final userId = _auth.currentUser?.uid;
      await _firestore.apartment(apartmentId).update({
        'users': FieldValue.arrayRemove([userId])
      });
      await _firestore.collection('user').doc(userId).update({
        'ownedApartments': FieldValue.arrayRemove([apartmentId])
      });
      if (apartment.users.length <= 1) {
        await _firestore.apartment(apartmentId).delete();
      }
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const ApartmentFailure.serverError());
    } catch (_) {
      return left(const ApartmentFailure.serverError());
    }
  }

  @override
  Future<Either<ApartmentFailure, Unit>> update(Apartment apartment) async {
    try {
      final mapApartment = apartment.toJson()
        ..remove('users')
        ..remove('ownerId')
        ..remove('uid');
      _firestore.apartment(apartment.uid!).update(mapApartment);
      return right(unit);
    } on FirebaseException catch (e) {
      log('${e.code} ${e.message}');
      return left(const ApartmentFailure.serverError());
    }
  }

  @override
  Stream<Either<ApartmentFailure, List<Apartment>>> watchAll() async* {
    final currentUserId = _auth.currentUser!.uid;
    final snapshotStream =
        _firestore.collection('apartment').where('users', arrayContains: currentUserId).snapshots();
    yield* snapshotStream.map((snapshot) {
      final apartmentList = snapshot.docs.map((e) => Apartment.fromJson(e.data())).toList();
      return right<ApartmentFailure, List<Apartment>>(apartmentList);
    }).onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException && stackTrace.toString().contains('PERMISSION_DENIED')) {
        return left(const ApartmentFailure.permissionDenied());
      } else {
        return left(const ApartmentFailure.serverError());
      }
    });
  }

  @override
  Stream<Either<SearchFailure, List<RequestToJoin>>> watchRequests() async* {
    final userId = _auth.currentUser!.uid;
    final snapshotStream =
        _firestore.collection('user').doc(userId).collection('requests').snapshots();
    yield* snapshotStream.map((snapshot) {
      final apartmentList = snapshot.docs.map((e) => RequestToJoin.fromJson(e.data())).toList();
      return right<SearchFailure, List<RequestToJoin>>(apartmentList);
    }).onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException) {
        return left(SearchFailure.server(errorMessage: error.message));
      } else {
        return left(SearchFailure.unexpected(error.toString()));
      }
    });
  }

  @override
  Future<List<Roommates>> getApartmentWithUsers(List<Apartment> apartments) async {
    try {
      List<Roommates> apartmentWithRoommates = [];
      for (var i = 0; i < apartments.length; i++) {
        String usersString = '';
        for (var userId in apartments[i].users) {
          usersString += ', ${await _firestore.getUserName(userId)}';
        }
        usersString = 'Roommates: ${usersString.substring(2)}';
        apartmentWithRoommates.add(Roommates(apartments[i].uid!, usersString));
      }
      return apartmentWithRoommates;
    } on FirebaseException catch (e) {
      log('${e.code} ${e.message}');
      return [];
    }
  }

  @override
  Future<List<CurrentDateExpense>> getCurrentMonthExpences(List<Apartment> apartments) async {
    try {
      List<CurrentDateExpense> expenses = [];
      for (var apartment in apartments) {
        String month = getMonthAndYear(DateTime.now(), onlyMonth: true).substring(0, 3);
        int apartmentExpence = 0;
        final allExpences = await _firestore
            .apartmentCurrentMonthExpences(
              apartmentId: apartment.uid!,
              date: DateTime.now(),
            )
            .then((value) => value.docs);
        for (var expence in allExpences) {
          apartmentExpence += expence.data()['price'] as int;
        }
        month += ': ${priceFixer(apartmentExpence.toString())}';
        expenses.add(CurrentDateExpense(apartment.uid!, month));
      }
      return expenses;
    } on FirebaseException catch (e) {
      log('${e.code} ${e.message}');
      return [];
    }
  }

  @override
  Future<Either<ValueFailure, Apartment>> isUserOwnerOf(Apartment apartment) async {
    try {
      String userId = _auth.currentUser?.uid ?? '';
      return userId == apartment.ownerId
          ? right(apartment)
          : left(const ValueFailure.wrongOwner('You are not owner of this apartment'));
    } catch (e) {
      return left(ValueFailure.wrongOwner(e.toString()));
    }
  }
}
