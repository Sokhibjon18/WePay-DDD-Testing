import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/domain/product/i_product_repository.dart';
import 'package:we_pay/domain/product/value_objects.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    required String uid,
    required String name,
    required String buyerId,
    required String buyerName,
    required String apartmentId,
    required int price,
    required int count,
    required int color,
    @DateTimeConverter() required DateTime date,
    String? note,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    String uid = product.uid ?? const Uuid().v4();
    return ProductDto(
      uid: uid,
      name: product.name.getRight(),
      buyerId: product.buyerId,
      price: int.parse(product.price.getRight()),
      count: product.count,
      date: product.date,
      buyerName: product.buyerName,
      color: product.color.value,
      apartmentId: product.apartmentId,
    );
  }

  Product toDomain() {
    return Product(
      uid: uid,
      name: ProductName(name),
      buyerName: buyerName,
      buyerId: buyerId,
      price: ProductPrice(price.toString()),
      count: count,
      color: Color(color),
      date: date,
      apartmentId: apartmentId,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}

class DateTimeConverter implements JsonConverter<DateTime, Object> {
  const DateTimeConverter();

  @override
  DateTime fromJson(Object json) {
    return (json as Timestamp).toDate();
  }

  @override
  Object toJson(DateTime date) => Timestamp.fromDate(date);
}
