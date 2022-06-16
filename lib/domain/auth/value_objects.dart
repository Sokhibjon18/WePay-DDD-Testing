import 'package:we_pay/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/core/value_object.dart';
import 'package:we_pay/domain/core/value_validators.dart';

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
