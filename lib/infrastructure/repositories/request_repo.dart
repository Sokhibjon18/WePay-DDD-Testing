import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/request/i_request_repository.dart';
import 'package:we_pay/domain/request/request_failure.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';

@LazySingleton(as: IRequestRepository)
class RequestRepository implements IRequestRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  RequestRepository(this._firestore, this._auth);

  Future<QuerySnapshot<Map<String, dynamic>>> doesUserHaveJoinRequest(
    Apartment apartment,
    String currentUserId,
  ) async {
    return await _firestore
        .collection('user')
        .doc(apartment.ownerId)
        .collection('requests')
        .where('userId', isEqualTo: currentUserId)
        .where('apartmentName', isEqualTo: apartment.getFullAddress())
        .get();
  }

  @override
  Future<Either<RequestFailure, RequestOperations>> sendRequestToJoin(String apartmentId) async {
    try {
      final apartmentFirestore = await _firestore.apartment(apartmentId).get();
      final apartment = Apartment.fromJson(apartmentFirestore.data()!);
      final currentUserId = _auth.currentUser!.uid;
      final currentUserEmail = _auth.currentUser!.email!;
      var snapshot = await doesUserHaveJoinRequest(apartment, currentUserId);
      if (apartment.users.contains(_auth.currentUser!.uid)) {
        return left(const RequestFailure.userAlreadyAdded());
      } else if (snapshot.docs.isNotEmpty) {
        return left(const RequestFailure.haveRequest());
      } else {
        final uid = const Uuid().v4();
        final request = RequestToJoin(
          uid: uid,
          userId: currentUserId,
          email: currentUserEmail,
          apartmentId: apartment.uid!,
          apartmentName: apartment.getFullAddress(),
        );
        await _firestore.getRequestReference(apartment.ownerId!, uid).set(request.toJson());
        return right(RequestOperations.sent);
      }
    } on FirebaseException catch (e) {
      return left(RequestFailure.server(errorMessage: e.code));
    } catch (e) {
      return left(RequestFailure.unexpected(e.toString()));
    }
  }

  @override
  Future<Either<RequestFailure, RequestOperations>> acceptRequest(RequestToJoin request) async {
    try {
      final currentUserId = _auth.currentUser!.uid;
      await _firestore.collection('user').doc(request.userId).update({
        'ownedApartments': FieldValue.arrayUnion([request.apartmentId])
      });
      await _firestore.apartment(request.apartmentId).update({
        'users': FieldValue.arrayUnion([request.userId])
      });
      await _firestore.getRequestReference(currentUserId, request.uid).delete();
      return right(RequestOperations.added);
    } on FirebaseException catch (e) {
      return left(RequestFailure.server(errorMessage: e.code));
    } catch (e) {
      return left(RequestFailure.unexpected(e.toString()));
    }
  }

  @override
  Future<Either<RequestFailure, RequestOperations>> rejectRequest(String requestId) async {
    try {
      _firestore.getRequestReference(_auth.currentUser!.uid, requestId).delete();
      return right(RequestOperations.rejected);
    } on FirebaseException catch (e) {
      return left(RequestFailure.unexpected(e.code));
    }
  }
}
