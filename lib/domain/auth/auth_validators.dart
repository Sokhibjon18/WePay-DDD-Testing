import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import 'value_objects.dart';
import '../core/value_failure.dart';

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

Either<ValueFailure<String>, String> validateTwoPasswords(Password password, String input) {
  if (input.length < 6) {
    return left(const ValueFailure.shortPassword(minLength: 6));
  } else if (password.getRight().toString() == input) {
    return right(input);
  } else {
    return left(const ValueFailure.paswordsAreNotSame());
  }
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  return EmailValidator.validate(input) ? right(input) : left(const ValueFailure.invalidEmail());
}

Either<ValueFailure<String>, String> validateName(String input) {
  return input.length < 3 ? left(const ValueFailure.shortageName()) : right(input);
}
