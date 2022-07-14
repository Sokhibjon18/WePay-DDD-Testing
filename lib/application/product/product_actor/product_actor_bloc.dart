import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' as z;
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

  StreamSubscription<z.Either<ProductFailure, List<Product>>>? productsSubscription;
  late StreamController<DateTime> dateTimeStream = StreamController.broadcast();
  late DateTime dateTime;
  late String apartmentId;

  ProductActorBloc(this._repository) : super(ProductActorState.initial()) {
    on<_Watch>((event, emit) {
      apartmentId = event.apartmentId;
      dateTime = event.time;
      dateTimeStream.add(dateTime);
      productsSubscription =
          _repository.watchAllProductInApartment(apartmentId, dateTime).listen((event) {
        add(ProductActorEvent.productsReceived(event));
      });
    });
    on<_Create>((event, emit) async {
      await _repository.create(
        Product(
          apartmentId: event.apartmentId,
          name: ProductName('name'),
          buyerName: 'Name',
          buyerId: '5w9GY16EHkQkZvN3AvOQ3KGkMER2',
          price: ProductPrice('80000'),
          count: 4,
          color: Colors.blue,
          date: DateTime.now(),
        ),
      );
    });
    on<_Update>((event, emit) async {
      await _repository.update(
        Product(
          uid: 'e07b7eb3-98c4-4403-84b6-1aef188e3112',
          apartmentId: event.apartmentId,
          name: ProductName('Kulcha'),
          buyerName: 'Aziz',
          buyerId: '5w9GY16EHkQkZvN3AvOQ3KGkMER2',
          price: ProductPrice('20000'),
          count: 2,
          color: Colors.red,
          date: DateTime.now(),
        ),
      );
    });
    on<_ProductsReceived>((event, emit) {
      event.failureOrProducts.fold(
        (productFailure) => emit(ProductActorState.loadFailure(productFailure)),
        (productList) => emit(
          productList.isEmpty
              ? const ProductActorState.emptyList()
              : ProductActorState.loadSuccess(productList),
        ),
      );
    });
  }

  @override
  Future<void> close() async {
    await productsSubscription?.cancel();
    return super.close();
  }
}
