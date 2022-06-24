import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/core/value_failure.dart';
import 'package:we_pay/domain/core/value_object.dart';
import 'package:we_pay/domain/core/value_validators.dart';

class Address extends ValueObject {
  @override
  final Either<ValueFailure, String> value;

  const Address._(this.value);

  factory Address(String input) {
    return Address._(validateAddress(input));
  }
}

class HouseNumber extends ValueObject {
  @override
  final Either<ValueFailure, String> value;

  const HouseNumber._(this.value);

  factory HouseNumber(String input) {
    return HouseNumber._(validateHouseNumber(input));
  }
}
