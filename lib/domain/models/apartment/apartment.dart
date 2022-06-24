import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartment.freezed.dart';
part 'apartment.g.dart';

@freezed
abstract class Apartment implements _$Apartment {
  const Apartment._();

  const factory Apartment({
    String? uid,
    String? ownerId,
    required String region,
    required String district,
    required String street,
    required String houseNumber,
    @Default('') String flatNumber,
    @Default([]) List<String> users,
  }) = _Apartment;

  factory Apartment.fromJson(Map<String, dynamic> json) => _$ApartmentFromJson(json);
}
