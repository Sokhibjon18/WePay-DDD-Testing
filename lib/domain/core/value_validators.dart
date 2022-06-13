import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import 'package:we_pay/domain/core/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isEmpty ? left(const ValueFailure.empty()) : right(input);
}

Either<ValueFailure<String>, String> validateStringMaxLegth(String input) {
  return input.isEmpty ? left(const ValueFailure.exceedingLength(maxLength: 30)) : right(input);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(const ValueFailure.shortPassword(minLength: 6));
  }
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  return EmailValidator.validate(input) ? right(input) : left(const ValueFailure.invalidEmail());
}
