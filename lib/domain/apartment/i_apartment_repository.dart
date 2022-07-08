import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/search/search_failure.dart';

abstract class IApartmentRepository {
  Stream<Either<ApartmentFailure, List<Apartment>>> watchAll();
  Stream<Either<SearchFailure, List<RequestToJoin>>> watchRequests();
  Future<Either<ApartmentFailure, Unit>> create(Apartment apartment);
  Future<Either<ApartmentFailure, Unit>> update(Apartment apartment);
  Future<Either<ApartmentFailure, Unit>> delete(Apartment apartment);
}
