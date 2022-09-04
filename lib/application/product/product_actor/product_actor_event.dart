part of 'product_actor_bloc.dart';

@freezed
class ProductActorEvent with _$ProductActorEvent {
  const factory ProductActorEvent.watch(String publicExpenseId) = _Watch;
  const factory ProductActorEvent.productsReceived(
      z.Either<ProductFailure, List<Product>> failureOrProducts) = _ProductsReceived;
}
