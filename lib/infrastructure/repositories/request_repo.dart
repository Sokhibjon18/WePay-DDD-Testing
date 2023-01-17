import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import '../../domain/models/apartment/apartment.dart';
import 'package:dartz/dartz.dart';
import '../../domain/models/request/request.dart';
import '../../domain/request/i_request_repository.dart';
import '../../domain/request/request_failure.dart';
import '../core/firestore_x.dart';

@LazySingleton(as: IRequestRepository)
class RequestRepository implements IRequestRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  RequestRepository(this._firestore, this._auth);

  Future<QuerySnapshot<Map<String, dynamic>>> doesUserHaveJoinRequest(
    PublicExpense apartment,
    String currentUserId,
  ) async {
    return await _firestore
        .collection('user')
        .doc(apartment.ownerId)
        .collection('requests')
        .where('userId', isEqualTo: currentUserId)
        .where('apartmentName', isEqualTo: apartment)
        .get();
  }

  // Future<bool> doesUserRequestedToJoin(String publicApartmentId) async {
  //   final expenseReference = _firestore.collection('expensesInfo').doc(publicApartmentId);

  //   return false;
  // }

  @override
  Future<Either<RequestFailure, RequestOperations>> sendRequestToJoin(
    String userId,
    PublicExpense publicExpense,
  ) async {
    try {
      final currentUserEmail = _auth.currentUser!.email!;

      final doesUserRequested = await _firestore.doesUserRequested(userId, publicExpense.uid);
      final isUserInThisApartment = publicExpense.users.contains(userId);

      if (doesUserRequested) {
        return left(const RequestFailure.haveRequest());
      } else if (isUserInThisApartment) {
        return left(const RequestFailure.userAlreadyAdded());
      } else {
        log('request sent');
        final request = RequestToJoin(
          uid: const Uuid().v4(),
          userId: userId,
          email: currentUserEmail,
          publicExpenseId: publicExpense.uid,
          publicExpenseName: publicExpense.name,
        );
        await _firestore.getRequestReference(userId, publicExpense.uid).set(request.toJson());
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
      await _firestore.collection('user').doc(currentUserId).update({
        'ownedApartments': FieldValue.arrayUnion([request.publicExpenseId])
      });
      await _firestore.publicExpense(request.publicExpenseId).update({
        'users': FieldValue.arrayUnion([currentUserId])
      });
      await _firestore.getRequestReference(currentUserId, request.publicExpenseId).delete();
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
