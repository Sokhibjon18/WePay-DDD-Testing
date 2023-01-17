import 'package:dartz/dartz.dart';
import '../models/apartment/apartment.dart';
import '../models/user_model/user_model.dart';
import 'search_failure.dart';

abstract class ISearchRepository {
  Future<Either<SearchFailure, UserModel>> searchUser(int userId, String apartmentId);
  Future<Either<SearchFailure, List<PublicExpense>>> showAll();
}
