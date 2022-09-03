import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartment.freezed.dart';
part 'apartment.g.dart';

@freezed
abstract class PublicExpense implements _$PublicExpense {
  const PublicExpense._();

  const factory PublicExpense({
    @Default('') String uid,
    String? ownerId,
    @Default('') String name,
    @Default([]) List<String> users,
  }) = _Apartment;

  factory PublicExpense.fromJson(Map<String, dynamic> json) => _$PublicExpenseFromJson(json);
}
