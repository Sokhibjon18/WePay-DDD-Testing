import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/core/value_failure.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/domain/product/i_product_repository.dart';
import 'package:we_pay/domain/product/product_failure.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';
import 'package:rxdart/rxdart.dart';
import 'package:we_pay/infrastructure/product_dto/product_dto.dart';
import 'package:we_pay/infrastructure/strings.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  ProductRepository(this._firestore, this._auth);

  @override
  Stream<Either<ProductFailure, List<Product>>> watchAllProductInApartment(
      String apartmentId, DateTime date) async* {
    yield* _firestore.publicExpenses(apartmentId: apartmentId, date: date).map((snapshot) {
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
  Future<List<Product>> updateUsersNameAndColor(List<Product> produts) async {
    try {
      final List<Product> list = [];
      for (var product in produts) {
        final userMap = await _firestore.getUser(product.buyerId);
        final user = UserModel.fromJson(userMap.data()!);
        final newProduct = product.copyWith(buyerName: user.name, color: Color(user.color));
        list.add(newProduct);
      }
      return list;
    } catch (e) {
      log(e.toString());
      return [];
    }
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
  Future<void> sendNotification(List<String> usersList, String expenseInfo) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'key=$notificationKey';
    dio.options.headers['Content-Type'] = 'application/json';
    String userName = await _firestore.getUserName(_auth.currentUser!.uid);
    String currentUserId = _auth.currentUser!.uid;

    List<String> tokens = [];

    for (var userId in usersList) {
      if (userId != currentUserId) {
        tokens.add(await _firestore.getUserNotificationToken(userId));
      }
    }

    await dio.post(
      'https://fcm.googleapis.com/fcm/send',
      data: getJsonString(
        tokens,
        userName,
        expenseInfo,
      ),
    );
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

  @override
  Future<Either<ValueFailure, Product>> isUserOwnerOf(Product product) async {
    try {
      String userId = _auth.currentUser?.uid ?? '';
      return userId == product.buyerId
          ? right(product)
          : left(const ValueFailure.wrongOwner('This is not your product'));
    } catch (e) {
      return left(ValueFailure.wrongOwner(e.toString()));
    }
  }

  Map<String, Object> getJsonString(List<String> tokens, String name, String message) => {
        "registration_ids": tokens,
        "notification": {
          "title": name,
          "body": message,
        }
      };
}
