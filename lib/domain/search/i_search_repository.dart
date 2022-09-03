import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/domain/search/search_failure.dart';

abstract class ISearchRepository {
  Future<Either<SearchFailure, UserModel>> searchUser(int userId, String apartmentId);
  Future<Either<SearchFailure, List<PublicExpense>>> showAll();
}
