part of 'product_actor_bloc.dart';

@freezed
class ProductActorEvent with _$ProductActorEvent {
  const factory ProductActorEvent.create(String apartmentId) = _Create;
  const factory ProductActorEvent.update(String apartmentId) = _Update;
  const factory ProductActorEvent.delete(String apartmentId) = _Delete;
  const factory ProductActorEvent.watch(String apartmentId, DateTime time) = _Watch;
  // const factory ProductActorEvent.dateChanged(int amount) = _DateChanged;
  const factory ProductActorEvent.productsReceived(
      z.Either<ProductFailure, List<Product>> failureOrProducts) = _ProductsReceived;
}
