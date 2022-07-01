import 'package:we_pay/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/core/value_object.dart';
import 'package:we_pay/domain/product/product_validators.dart';

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
  final Either<ValueFailure, DateTime> value;

  const ProductCount._(this.value);

  factory ProductCount(DateTime date) {
    return ProductCount._(validateDate(date));
  }
}
