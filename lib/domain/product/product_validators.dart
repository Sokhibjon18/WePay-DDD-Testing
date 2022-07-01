import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/core/value_failure.dart';

Either<ValueFailure, String> validateProductName(String input) {
  return input.length < 2
      ? left(const ValueFailure.shortageName(errorMessage: 'Invalid product name'))
      : right(input);
}

Either<ValueFailure, String> validatePrice(String input) {
  return int.tryParse(input) == null
      ? left(const ValueFailure.invalidNumber(errorMessage: 'Invalid number format'))
      : right(input);
}

Either<ValueFailure, DateTime> validateDate(DateTime date) {
  DateTime currentDate = DateTime.now();
  return date.year == currentDate.year && date.month == currentDate.month
      ? right(date)
      : left(const ValueFailure.invalidDate(errorMessage: 'Invalid date picked'));
}

Either<ValueFailure, String> validateCout(String count) {
  int? parsedNumber = int.tryParse(count);
  if (parsedNumber == null) {
    return left(const ValueFailure.invalidProductCount(errorMessage: 'Invalid product count'));
  } else if (parsedNumber < 1) {
    return left(
        const ValueFailure.invalidProductCount(errorMessage: 'Number should be more then 0'));
  } else {
    return right(count);
  }
}
