import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';

abstract class IApartmentRepository {
  Stream<Either<ApartmentFailure, List<Apartment>>> watchAll();
  Future<Either<ApartmentFailure, Unit>> create(Apartment apartment);
  Future<Either<ApartmentFailure, Unit>> update(Apartment apartment);
  Future<Either<ApartmentFailure, Unit>> delete(Apartment apartment);
}
