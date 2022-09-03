import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/domain/search/i_search_repository.dart';
import 'package:we_pay/domain/search/search_failure.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  final FirebaseFirestore _firestore;

  SearchRepository(this._firestore);

  @override
  Future<Either<SearchFailure, UserModel>> searchUser(int userId, String apartmentId) async {
    try {
      final userRef = _firestore.collection('user');

      log('$userId');
      final userSnapshot = await userRef.where('id', isEqualTo: userId).get();
      final users = userSnapshot.docs.map((e) => UserModel.fromJson(e.data())).toList();

      if (users.isEmpty) {
        return left(const SearchFailure.notFound());
      } else {
        return right(users.first);
      }
    } on FirebaseException catch (e) {
      return left(SearchFailure.unexpected(e.code));
    }
  }

  @override
  Future<Either<SearchFailure, List<PublicExpense>>> showAll() async {
    try {
      final apartmentRef = await _firestore.collection('apartment').get();
      final List<PublicExpense> apartmentList =
          apartmentRef.docs.map((e) => PublicExpense.fromJson(e.data())).toList();

      if (apartmentList.isEmpty) {
        return left(const SearchFailure.notFound());
      } else {
        return right(apartmentList.toSet().toList());
      }
    } on FirebaseException catch (e) {
      return left(SearchFailure.unexpected(e.code));
    }
  }
}
