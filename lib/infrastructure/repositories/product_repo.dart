import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/product/i_product_repository.dart';
import 'package:we_pay/domain/product/product_failure.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';
import 'package:rxdart/rxdart.dart';
import 'package:we_pay/infrastructure/product_dto/product_dto.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  ProductRepository(this._firestore, this._auth);

  @override
  Stream<Either<ProductFailure, List<Product>>> watchAllProductInApartment(
      String apartmentId, DateTime date) async* {
    yield* _firestore.apartmentExpenses(apartmentId: apartmentId, date: date).map((snapshot) {
      final productList =
          snapshot.docs.map((e) => ProductDto.fromJson(e.data()).toDomain()).toList();
      return right<ProductFailure, List<Product>>(productList);
    }).onErrorReturnWith((error, stackTrace) {
      log('$error::$stackTrace');
      if (error is FirebaseException && stackTrace.toString().contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else {
        return left(ProductFailure.unexpected('$error $stackTrace'));
      }
    });
  }

  @override
  Future<Either<ProductFailure, Unit>> create(Product product) async {
    try {
      final buyerId = _auth.currentUser?.uid ?? '';
      final buyerName = await _firestore.getUserName(buyerId);
      final productColor = await _firestore.getUserColor(buyerId);
      product =
          product.copyWith(buyerId: buyerId, buyerName: buyerName, color: Color(productColor));
      ProductDto productDto = ProductDto.fromDomain(product);
      await _firestore
          .productDirectory(apartmentId: productDto.apartmentId, productId: productDto.uid)
          .set(productDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      log('${e.code}::${e.stackTrace}');
      return left(ProductFailure.unexpected(e.code));
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> delete(Product product) async {
    try {
      ProductDto productDto = ProductDto.fromDomain(product);
      await _firestore
          .productDirectory(apartmentId: productDto.apartmentId, productId: productDto.uid)
          .delete();
      return right(unit);
    } on FirebaseException catch (e) {
      log('${e.code}::${e.stackTrace}');
      return left(ProductFailure.unexpected(e.code));
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> update(Product product) async {
    try {
      ProductDto productDto = ProductDto.fromDomain(product);
      await _firestore
          .productDirectory(apartmentId: productDto.apartmentId, productId: productDto.uid)
          .update(productDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      log('${e.code}::${e.stackTrace}');
      return left(ProductFailure.unexpected(e.code));
    }
  }
}
