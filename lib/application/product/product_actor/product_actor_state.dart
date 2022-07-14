part of 'product_actor_bloc.dart';

@freezed
class ProductActorState with _$ProductActorState {
  factory ProductActorState.initial() = _Initial;
  const factory ProductActorState.loadFailure(ProductFailure failure) = _LoadFailure;
  const factory ProductActorState.loadSuccess(List<Product> productList) = _LoadSuccess;
  const factory ProductActorState.emptyList() = _EmptyList;
}
