import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' as z;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/models/product/product.dart';
import '../../../domain/product/i_product_repository.dart';
import '../../../domain/product/product_failure.dart';

part 'product_actor_event.dart';
part 'product_actor_state.dart';
part 'product_actor_bloc.freezed.dart';

@injectable
class ProductActorBloc extends Bloc<ProductActorEvent, ProductActorState> {
  final IProductRepository _repository;

  StreamSubscription<z.Either<ProductFailure, List<Product>>>? productsSubscription;
  late DateTime dateTime;
  late String publicExpenseId;

  ProductActorBloc(this._repository) : super(ProductActorState.initial()) {
    on<_Watch>((event, emit) {
      publicExpenseId = event.publicExpenseId;
      productsSubscription =
          _repository.watchAllProductInApartment(publicExpenseId).listen((event) {
        add(ProductActorEvent.productsReceived(event));
      });
    });
    on<_ProductsReceived>((event, emit) async {
      await event.failureOrProducts.fold<Future>(
        (productFailure) async => emit(ProductActorState.loadFailure(productFailure)),
        (productList) async {
          final newList = await _repository.updateUsersNameAndColor(productList);
          newList.isEmpty
              ? emit(const ProductActorState.emptyList())
              : emit(ProductActorState.loadSuccess(newList));
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await productsSubscription?.cancel();
    return super.close();
  }
}
