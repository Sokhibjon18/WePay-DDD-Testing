import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/apartment/i_apartment_repository.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/domain/search/search_failure.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';
import 'package:rxdart/rxdart.dart';

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

  Future<Either<ApartmentFailure, Unit>> deleteApartmentFromUser(Apartment apartment) async {
    List<String> detectApartmentAndDelete(List<String> ownedApartments) {
      List<String> newApartmentList = [];
      for (var apartmentId in ownedApartments) {
        if (apartmentId != apartment.uid) {
          newApartmentList.add(apartmentId);
        }
      }
      return newApartmentList;
    }

    try {
      final userId = apartment.ownerId!;
      final userMap =
          await _firestore.collection('user').doc(userId).get().then((value) => value.data());
      var user = UserModel.fromJson(userMap!);
      user = user.copyWith(ownedApartments: detectApartmentAndDelete(user.ownedApartments));
      await _firestore.updateUser(user);
      return right(unit);
    } on FirebaseException catch (e) {
      log('${e.code} ${e.message}');
      return left(const ApartmentFailure.serverError());
    }
  }

  @override
  Future<Either<ApartmentFailure, Unit>> delete(Apartment apartment) async {
    try {
      final apartmentId = apartment.uid!;
      if (apartment.users.isEmpty) {
        await _firestore.collection('apartment').doc(apartmentId).delete();
      }
      await deleteApartmentFromUser(apartment);
      return right(unit);
    } on FirebaseException catch (_) {
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
}
