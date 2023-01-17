import 'package:dartz/dartz.dart';
import '../core/value_failure.dart';

Either<ValueFailure<String>, String> validateAddress(String input) {
  return input.length < 3 ? left(const ValueFailure.shortageAddress()) : right(input);
}

Either<ValueFailure<String>, String> validateHouseNumber(String input) {
  return input.isEmpty ? left(const ValueFailure.empty()) : right(input);
}
