import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure {
  const factory ValueFailure.exceedingLength({required int maxLength}) = ExceedingLength;
  const factory ValueFailure.empty() = Empty;
  const factory ValueFailure.invalidEmail() = InvalidEmail;
  const factory ValueFailure.shortPassword({required int minLength}) = ShortPassword;
  const factory ValueFailure.paswordsAreNotSame() = PaswordsAreNotSame;
  const factory ValueFailure.shortageName({String? errorMessage}) = ShortageName;
  const factory ValueFailure.shortageAddress() = ShortageAddress;
  const factory ValueFailure.invalidNumber({String? errorMessage}) = InvalidNumber;
  const factory ValueFailure.invalidDate({String? errorMessage}) = InvalidDate;
  const factory ValueFailure.invalidProductCount({String? errorMessage}) = InvalidProductCount;
  const factory ValueFailure.wrongOwner(String errorMessage) = WrongOwner;
}
