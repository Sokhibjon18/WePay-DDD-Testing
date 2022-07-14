// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apartmentId) create,
    required TResult Function(String apartmentId) update,
    required TResult Function(String apartmentId) delete,
    required TResult Function(String apartmentId, DateTime time) watch,
    required TResult Function(
            z.Either<ProductFailure, List<Product>> failureOrProducts)
        productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Watch value) watch,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductActorEventCopyWith<$Res> {
  factory $ProductActorEventCopyWith(
          ProductActorEvent value, $Res Function(ProductActorEvent) then) =
      _$ProductActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductActorEventCopyWithImpl<$Res>
    implements $ProductActorEventCopyWith<$Res> {
  _$ProductActorEventCopyWithImpl(this._value, this._then);

  final ProductActorEvent _value;
  // ignore: unused_field
  final $Res Function(ProductActorEvent) _then;
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
  $Res call({String apartmentId});
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res>
    extends _$ProductActorEventCopyWithImpl<$Res>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, (v) => _then(v as _$_Create));

  @override
  _$_Create get _value => super._value as _$_Create;

  @override
  $Res call({
    Object? apartmentId = freezed,
  }) {
    return _then(_$_Create(
      apartmentId == freezed
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create(this.apartmentId);

  @override
  final String apartmentId;

  @override
  String toString() {
    return 'ProductActorEvent.create(apartmentId: $apartmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Create &&
            const DeepCollectionEquality()
                .equals(other.apartmentId, apartmentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(apartmentId));

  @JsonKey(ignore: true)
  @override
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      __$$_CreateCopyWithImpl<_$_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apartmentId) create,
    required TResult Function(String apartmentId) update,
    required TResult Function(String apartmentId) delete,
    required TResult Function(String apartmentId, DateTime time) watch,
    required TResult Function(
            z.Either<ProductFailure, List<Product>> failureOrProducts)
        productsReceived,
  }) {
    return create(apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
  }) {
    return create?.call(apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(apartmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Watch value) watch,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements ProductActorEvent {
  const factory _Create(final String apartmentId) = _$_Create;

  String get apartmentId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  $Res call({String apartmentId});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$ProductActorEventCopyWithImpl<$Res>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, (v) => _then(v as _$_Update));

  @override
  _$_Update get _value => super._value as _$_Update;

  @override
  $Res call({
    Object? apartmentId = freezed,
  }) {
    return _then(_$_Update(
      apartmentId == freezed
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.apartmentId);

  @override
  final String apartmentId;

  @override
  String toString() {
    return 'ProductActorEvent.update(apartmentId: $apartmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality()
                .equals(other.apartmentId, apartmentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(apartmentId));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apartmentId) create,
    required TResult Function(String apartmentId) update,
    required TResult Function(String apartmentId) delete,
    required TResult Function(String apartmentId, DateTime time) watch,
    required TResult Function(
            z.Either<ProductFailure, List<Product>> failureOrProducts)
        productsReceived,
  }) {
    return update(apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
  }) {
    return update?.call(apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(apartmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Watch value) watch,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ProductActorEvent {
  const factory _Update(final String apartmentId) = _$_Update;

  String get apartmentId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  $Res call({String apartmentId});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$ProductActorEventCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? apartmentId = freezed,
  }) {
    return _then(_$_Delete(
      apartmentId == freezed
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.apartmentId);

  @override
  final String apartmentId;

  @override
  String toString() {
    return 'ProductActorEvent.delete(apartmentId: $apartmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality()
                .equals(other.apartmentId, apartmentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(apartmentId));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apartmentId) create,
    required TResult Function(String apartmentId) update,
    required TResult Function(String apartmentId) delete,
    required TResult Function(String apartmentId, DateTime time) watch,
    required TResult Function(
            z.Either<ProductFailure, List<Product>> failureOrProducts)
        productsReceived,
  }) {
    return delete(apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
  }) {
    return delete?.call(apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(apartmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Watch value) watch,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ProductActorEvent {
  const factory _Delete(final String apartmentId) = _$_Delete;

  String get apartmentId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WatchCopyWith<$Res> {
  factory _$$_WatchCopyWith(_$_Watch value, $Res Function(_$_Watch) then) =
      __$$_WatchCopyWithImpl<$Res>;
  $Res call({String apartmentId, DateTime time});
}

/// @nodoc
class __$$_WatchCopyWithImpl<$Res> extends _$ProductActorEventCopyWithImpl<$Res>
    implements _$$_WatchCopyWith<$Res> {
  __$$_WatchCopyWithImpl(_$_Watch _value, $Res Function(_$_Watch) _then)
      : super(_value, (v) => _then(v as _$_Watch));

  @override
  _$_Watch get _value => super._value as _$_Watch;

  @override
  $Res call({
    Object? apartmentId = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_Watch(
      apartmentId == freezed
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Watch implements _Watch {
  const _$_Watch(this.apartmentId, this.time);

  @override
  final String apartmentId;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'ProductActorEvent.watch(apartmentId: $apartmentId, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Watch &&
            const DeepCollectionEquality()
                .equals(other.apartmentId, apartmentId) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apartmentId),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_WatchCopyWith<_$_Watch> get copyWith =>
      __$$_WatchCopyWithImpl<_$_Watch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apartmentId) create,
    required TResult Function(String apartmentId) update,
    required TResult Function(String apartmentId) delete,
    required TResult Function(String apartmentId, DateTime time) watch,
    required TResult Function(
            z.Either<ProductFailure, List<Product>> failureOrProducts)
        productsReceived,
  }) {
    return watch(apartmentId, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
  }) {
    return watch?.call(apartmentId, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(apartmentId, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Watch value) watch,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) {
    return watch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class _Watch implements ProductActorEvent {
  const factory _Watch(final String apartmentId, final DateTime time) =
      _$_Watch;

  String get apartmentId => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_WatchCopyWith<_$_Watch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductsReceivedCopyWith<$Res> {
  factory _$$_ProductsReceivedCopyWith(
          _$_ProductsReceived value, $Res Function(_$_ProductsReceived) then) =
      __$$_ProductsReceivedCopyWithImpl<$Res>;
  $Res call({z.Either<ProductFailure, List<Product>> failureOrProducts});
}

/// @nodoc
class __$$_ProductsReceivedCopyWithImpl<$Res>
    extends _$ProductActorEventCopyWithImpl<$Res>
    implements _$$_ProductsReceivedCopyWith<$Res> {
  __$$_ProductsReceivedCopyWithImpl(
      _$_ProductsReceived _value, $Res Function(_$_ProductsReceived) _then)
      : super(_value, (v) => _then(v as _$_ProductsReceived));

  @override
  _$_ProductsReceived get _value => super._value as _$_ProductsReceived;

  @override
  $Res call({
    Object? failureOrProducts = freezed,
  }) {
    return _then(_$_ProductsReceived(
      failureOrProducts == freezed
          ? _value.failureOrProducts
          : failureOrProducts // ignore: cast_nullable_to_non_nullable
              as z.Either<ProductFailure, List<Product>>,
    ));
  }
}

/// @nodoc

class _$_ProductsReceived implements _ProductsReceived {
  const _$_ProductsReceived(this.failureOrProducts);

  @override
  final z.Either<ProductFailure, List<Product>> failureOrProducts;

  @override
  String toString() {
    return 'ProductActorEvent.productsReceived(failureOrProducts: $failureOrProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrProducts, failureOrProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrProducts));

  @JsonKey(ignore: true)
  @override
  _$$_ProductsReceivedCopyWith<_$_ProductsReceived> get copyWith =>
      __$$_ProductsReceivedCopyWithImpl<_$_ProductsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apartmentId) create,
    required TResult Function(String apartmentId) update,
    required TResult Function(String apartmentId) delete,
    required TResult Function(String apartmentId, DateTime time) watch,
    required TResult Function(
            z.Either<ProductFailure, List<Product>> failureOrProducts)
        productsReceived,
  }) {
    return productsReceived(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
  }) {
    return productsReceived?.call(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartmentId)? create,
    TResult Function(String apartmentId)? update,
    TResult Function(String apartmentId)? delete,
    TResult Function(String apartmentId, DateTime time)? watch,
    TResult Function(z.Either<ProductFailure, List<Product>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(failureOrProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Watch value) watch,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return productsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) {
    return productsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Watch value)? watch,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(this);
    }
    return orElse();
  }
}

abstract class _ProductsReceived implements ProductActorEvent {
  const factory _ProductsReceived(
          final z.Either<ProductFailure, List<Product>> failureOrProducts) =
      _$_ProductsReceived;

  z.Either<ProductFailure, List<Product>> get failureOrProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProductsReceivedCopyWith<_$_ProductsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductFailure failure) loadFailure,
    required TResult Function(List<Product> productList) loadSuccess,
    required TResult Function() emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EmptyList value) emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductActorStateCopyWith<$Res> {
  factory $ProductActorStateCopyWith(
          ProductActorState value, $Res Function(ProductActorState) then) =
      _$ProductActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductActorStateCopyWithImpl<$Res>
    implements $ProductActorStateCopyWith<$Res> {
  _$ProductActorStateCopyWithImpl(this._value, this._then);

  final ProductActorState _value;
  // ignore: unused_field
  final $Res Function(ProductActorState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductActorStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'ProductActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductFailure failure) loadFailure,
    required TResult Function(List<Product> productList) loadSuccess,
    required TResult Function() emptyList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EmptyList value) emptyList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductActorState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({ProductFailure failure});

  $ProductFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ProductActorStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProductFailure,
    ));
  }

  @override
  $ProductFailureCopyWith<$Res> get failure {
    return $ProductFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final ProductFailure failure;

  @override
  String toString() {
    return 'ProductActorState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductFailure failure) loadFailure,
    required TResult Function(List<Product> productList) loadSuccess,
    required TResult Function() emptyList,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EmptyList value) emptyList,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProductActorState {
  const factory _LoadFailure(final ProductFailure failure) = _$_LoadFailure;

  ProductFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Product> productList});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ProductActorStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? productList = freezed,
  }) {
    return _then(_$_LoadSuccess(
      productList == freezed
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<Product> productList)
      : _productList = productList;

  final List<Product> _productList;
  @override
  List<Product> get productList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString() {
    return 'ProductActorState.loadSuccess(productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductFailure failure) loadFailure,
    required TResult Function(List<Product> productList) loadSuccess,
    required TResult Function() emptyList,
  }) {
    return loadSuccess(productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
  }) {
    return loadSuccess?.call(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EmptyList value) emptyList,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ProductActorState {
  const factory _LoadSuccess(final List<Product> productList) = _$_LoadSuccess;

  List<Product> get productList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyListCopyWith<$Res> {
  factory _$$_EmptyListCopyWith(
          _$_EmptyList value, $Res Function(_$_EmptyList) then) =
      __$$_EmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyListCopyWithImpl<$Res>
    extends _$ProductActorStateCopyWithImpl<$Res>
    implements _$$_EmptyListCopyWith<$Res> {
  __$$_EmptyListCopyWithImpl(
      _$_EmptyList _value, $Res Function(_$_EmptyList) _then)
      : super(_value, (v) => _then(v as _$_EmptyList));

  @override
  _$_EmptyList get _value => super._value as _$_EmptyList;
}

/// @nodoc

class _$_EmptyList implements _EmptyList {
  const _$_EmptyList();

  @override
  String toString() {
    return 'ProductActorState.emptyList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductFailure failure) loadFailure,
    required TResult Function(List<Product> productList) loadSuccess,
    required TResult Function() emptyList,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductFailure failure)? loadFailure,
    TResult Function(List<Product> productList)? loadSuccess,
    TResult Function()? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EmptyList value) emptyList,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EmptyList value)? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class _EmptyList implements ProductActorState {
  const factory _EmptyList() = _$_EmptyList;
}
