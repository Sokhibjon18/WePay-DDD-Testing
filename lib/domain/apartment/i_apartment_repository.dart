import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/core/value_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/current_date_expense.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/models/roommates.dart';
import 'package:we_pay/domain/search/search_failure.dart';

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
