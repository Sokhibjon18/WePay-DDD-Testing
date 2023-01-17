import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'errors.dart';
import 'value_failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getRight() => value.fold((f) => throw UnexpectedErrorValue(f), id);

  Either<ValueFailure<dynamic>, dynamic> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject($value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }
}
