import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/apartment/i_apartment_repository.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';

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
  Future<Either<ApartmentFailure, Unit>> delete(Apartment apartment) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ApartmentFailure, Unit>> update(Apartment apartment) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ApartmentFailure, List<Apartment>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
}
