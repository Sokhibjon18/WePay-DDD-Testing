import 'package:we_pay/domain/auth/auth_validators.dart';
import 'package:we_pay/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/core/value_object.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String email) {
    return EmailAddress._(validateEmail(email));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String password) {
    return Password._(validatePassword(password));
  }

  const Password._(this.value);

  factory Password.secondPassword(Password repeatedPassword, String password) {
    return Password._(validateTwoPasswords(repeatedPassword, password));
  }
}

class Name extends ValueObject {
  @override
  final Either<ValueFailure, String> value;

  const Name._(this.value);

  factory Name(String input) {
    return Name._(validateName(input));
  }
}
