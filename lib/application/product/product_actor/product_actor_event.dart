part of 'product_actor_bloc.dart';

@freezed
class ProductActorEvent with _$ProductActorEvent {
  const factory ProductActorEvent.create() = _Create;
  const factory ProductActorEvent.update() = _Update;
  const factory ProductActorEvent.delete() = _Delete;
  const factory ProductActorEvent.watch() = _Watch;
}
