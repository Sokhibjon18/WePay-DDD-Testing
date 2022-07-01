import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/domain/product/i_product_repository.dart';
import 'package:we_pay/domain/product/product_failure.dart';
import 'package:we_pay/domain/product/value_objects.dart';

part 'product_actor_event.dart';
part 'product_actor_state.dart';
part 'product_actor_bloc.freezed.dart';

@injectable
class ProductActorBloc extends Bloc<ProductActorEvent, ProductActorState> {
  final IProductRepository _repository;

  StreamController<Either<ProductFailure, List<Product>>> productsStream = StreamController();

  ProductActorBloc(this._repository) : super(const _Initial()) {
    productsStream
        .addStream(_repository.watchAll('51ded484-5638-413c-8089-5503ac4d7eec', DateTime(2022, 7)));
    on<_Create>((event, emit) async {
      final result = await _repository.create(
        Product(
          apartmentId: '51ded484-5638-413c-8089-5503ac4d7eec',
          name: ProductName('name'),
          buyerName: 'Name',
          buyerId: '5w9GY16EHkQkZvN3AvOQ3KGkMER2',
          price: ProductPrice('80000'),
          count: 4,
          color: Colors.blue,
          date: DateTime.now(),
        ),
      );
      log(result.toString());
    });
    on<_Update>((event, emit) async {
      final result = await _repository.update(
        Product(
          uid: 'e07b7eb3-98c4-4403-84b6-1aef188e3112',
          apartmentId: '51ded484-5638-413c-8089-5503ac4d7eec',
          name: ProductName('Kulcha'),
          buyerName: 'Aziz',
          buyerId: '5w9GY16EHkQkZvN3AvOQ3KGkMER2',
          price: ProductPrice('20000'),
          count: 2,
          color: Colors.red,
          date: DateTime.now(),
        ),
      );
      log(result.toString());
    });
  }
}
