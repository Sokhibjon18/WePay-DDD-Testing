import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> {
  const factory ValueFailure.exceedingLength({required int maxLength}) = ExceedingLength;
  const factory ValueFailure.empty() = Empty;
  const factory ValueFailure.invalidEmail() = InvalidEmail;
  const factory ValueFailure.shortPassword({required int minLength}) = ShortPassword;
}
