import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartment.freezed.dart';
part 'apartment.g.dart';

@freezed
abstract class Apartment implements _$Apartment {
  const Apartment._();

  const factory Apartment({required String uid}) = _Apartment;

  factory Apartment.fromJson(Map<String, dynamic> json) => _$ApartmentFromJson(json);
}
