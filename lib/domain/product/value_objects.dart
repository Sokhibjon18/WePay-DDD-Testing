import '../core/value_failure.dart';
import 'package:dartz/dartz.dart';
import '../core/value_object.dart';
import 'product_validators.dart';

class ProductName extends ValueObject {
  @override
  final Either<ValueFailure, String> value;

  const ProductName._(this.value);

  factory ProductName(String name) {
    return ProductName._(validateProductName(name));
  }
}

class ProductPrice extends ValueObject {
  @override
  final Either<ValueFailure, String> value;

  const ProductPrice._(this.value);

  factory ProductPrice(String price) {
    return ProductPrice._(validatePrice(price));
  }

  int toInt() {
    return int.parse(super.getRight());
  }
}

class ProductBoughtTime extends ValueObject {
  @override
  final Either<ValueFailure, DateTime> value;

  const ProductBoughtTime._(this.value);

  factory ProductBoughtTime(DateTime date) {
    return ProductBoughtTime._(validateDate(date));
  }
}

class ProductCount extends ValueObject {
  @override
  final Either<ValueFailure, int> value;

  const ProductCount._(this.value);

  factory ProductCount(int count) {
    return ProductCount._(validateCout(count));
  }
}
