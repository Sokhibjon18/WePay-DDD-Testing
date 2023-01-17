import 'package:dartz/dartz.dart';
import 'apartment_failure.dart';
import '../core/value_failure.dart';
import '../models/apartment/apartment.dart';
import '../models/current_date_expense.dart';
import '../models/request/request.dart';
import '../models/roommates.dart';
import '../search/search_failure.dart';

abstract class IApartmentRepository {
  Stream<Either<ApartmentFailure, List<PublicExpense>>> watchAll();
  Stream<Either<SearchFailure, List<RequestToJoin>>> watchRequests();
  Future<List<Roommates>> getApartmentWithUsers(List<PublicExpense> apartmentIds);
  Future<List<CurrentDateExpense>> getCurrentMonthExpences(List<PublicExpense> apartments);
  Future<Either<ApartmentFailure, Unit>> create(PublicExpense apartment);
  Future<Either<ValueFailure, PublicExpense>> isUserOwnerOf(PublicExpense apartment);
  Future<Either<ApartmentFailure, Unit>> update(PublicExpense apartment);
  Future<Either<ApartmentFailure, Unit>> delete(PublicExpense apartment);
}
