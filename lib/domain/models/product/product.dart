import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../product/value_objects.dart';

part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product({
    String? uid,
    required String publicExpenseId,
    required ProductName name,
    required String buyerName,
    required String buyerId,
    required ProductPrice price,
    required int count,
    required Color color,
    required DateTime date,
  }) = _Product;
}
