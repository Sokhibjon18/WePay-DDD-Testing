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
//   const factory Apartment({
//     required String uid,
//     required String ownerId,
//     required String name,
//     required List<String> usersId,
//     @ServerTimestampConverter() required FieldValue date,
//     required List<Expenses> expenses,
//     required int total,
//   }) = _Apartment;


// @freezed
// abstract class Expenses implements _$Expenses {
//   const Expenses._();

//   const factory Expenses({
//     required int cost,
//     required int count,
//     required String name,
//     required String note,
//     @ServerTimestampConverter() required FieldValue time,
//     required String userId,
//     required String userName,
//   }) = _Expenses;

//   factory Expenses.fromJson(Map<String, dynamic> json) => _$ExpensesFromJson(json);
// }
