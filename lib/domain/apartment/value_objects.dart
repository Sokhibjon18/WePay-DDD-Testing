import 'package:dartz/dartz.dart';
import 'apartment_validator.dart';
import '../core/value_failure.dart';
import '../core/value_object.dart';

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
