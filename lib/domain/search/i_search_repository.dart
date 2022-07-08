import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/search/search_failure.dart';

abstract class ISearchRepository {
  Future<Either<SearchFailure, List<Apartment>>> searchApartment(String text);
  Future<Either<SearchFailure, List<Apartment>>> showAll();
}
