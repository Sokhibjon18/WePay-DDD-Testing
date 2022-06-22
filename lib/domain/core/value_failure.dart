import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure {
  const factory ValueFailure.exceedingLength({required int maxLength}) = ExceedingLength;
  const factory ValueFailure.empty() = Empty;
  const factory ValueFailure.invalidEmail() = InvalidEmail;
  const factory ValueFailure.shortPassword({required int minLength}) = ShortPassword;
  const factory ValueFailure.paswordsAreNotSame() = PaswordsAreNotSame;
  const factory ValueFailure.shortageName() = ShortageName;
  const factory ValueFailure.shortageAddress() = ShortageAddress;
}
