import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/search/i_search_repository.dart';
import 'package:we_pay/domain/search/search_failure.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  final FirebaseFirestore _firestore;

  SearchRepository(this._firestore);

  @override
  Future<Either<SearchFailure, List<Apartment>>> searchApartment(String text) async {
    try {
      final List<Apartment> apartmentList = [];
      final apartmentRef = _firestore.collection('apartment');

      final resultByDistrict = await apartmentRef.where('district', isEqualTo: text).get();
      final resultByRegion = await apartmentRef.where('region', isEqualTo: text).get();
      final resultByStreet = await apartmentRef.where('street', isEqualTo: text).get();
      final resultByHouseNum = await apartmentRef.where('houseNumber', isEqualTo: text).get();

      apartmentList.addAll(resultByDistrict.docs.map((e) => Apartment.fromJson(e.data())).toList());
      apartmentList.addAll(resultByRegion.docs.map((e) => Apartment.fromJson(e.data())).toList());
      apartmentList.addAll(resultByStreet.docs.map((e) => Apartment.fromJson(e.data())).toList());
      apartmentList.addAll(resultByHouseNum.docs.map((e) => Apartment.fromJson(e.data())).toList());

      if (apartmentList.isEmpty) {
        return left(const SearchFailure.notFound());
      } else {
        return right(apartmentList.toSet().toList());
      }
    } on FirebaseException catch (e) {
      return left(SearchFailure.unexpected(e.code));
    }
  }

  @override
  Future<Either<SearchFailure, List<Apartment>>> showAll() async {
    try {
      final apartmentRef = await _firestore.collection('apartment').get();
      final List<Apartment> apartmentList =
          apartmentRef.docs.map((e) => Apartment.fromJson(e.data())).toList();

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
