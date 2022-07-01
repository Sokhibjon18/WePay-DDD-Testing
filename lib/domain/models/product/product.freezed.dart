// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  String? get uid => throw _privateConstructorUsedError;
  String get apartmentId => throw _privateConstructorUsedError;
  ProductName get name => throw _privateConstructorUsedError;
  String get buyerName => throw _privateConstructorUsedError;
  String get buyerId => throw _privateConstructorUsedError;
  ProductPrice get price => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String apartmentId,
      ProductName name,
      String buyerName,
      String buyerId,
      ProductPrice price,
      int count,
      Color color,
      String? note,
      DateTime date});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? apartmentId = freezed,
    Object? name = freezed,
    Object? buyerName = freezed,
    Object? buyerId = freezed,
    Object? price = freezed,
    Object? count = freezed,
    Object? color = freezed,
    Object? note = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      apartmentId: apartmentId == freezed
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      buyerName: buyerName == freezed
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: buyerId == freezed
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ProductPrice,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String apartmentId,
      ProductName name,
      String buyerName,
      String buyerId,
      ProductPrice price,
      int count,
      Color color,
      String? note,
      DateTime date});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? uid = freezed,
    Object? apartmentId = freezed,
    Object? name = freezed,
    Object? buyerName = freezed,
    Object? buyerId = freezed,
    Object? price = freezed,
    Object? count = freezed,
    Object? color = freezed,
    Object? note = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_Product(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      apartmentId: apartmentId == freezed
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      buyerName: buyerName == freezed
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: buyerId == freezed
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ProductPrice,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {this.uid,
      required this.apartmentId,
      required this.name,
      required this.buyerName,
      required this.buyerId,
      required this.price,
      required this.count,
      required this.color,
      this.note,
      required this.date})
      : super._();

  @override
  final String? uid;
  @override
  final String apartmentId;
  @override
  final ProductName name;
  @override
  final String buyerName;
  @override
  final String buyerId;
  @override
  final ProductPrice price;
  @override
  final int count;
  @override
  final Color color;
  @override
  final String? note;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'Product(uid: $uid, apartmentId: $apartmentId, name: $name, buyerName: $buyerName, buyerId: $buyerId, price: $price, count: $count, color: $color, note: $note, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.apartmentId, apartmentId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.buyerName, buyerName) &&
            const DeepCollectionEquality().equals(other.buyerId, buyerId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(apartmentId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(buyerName),
      const DeepCollectionEquality().hash(buyerId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {final String? uid,
      required final String apartmentId,
      required final ProductName name,
      required final String buyerName,
      required final String buyerId,
      required final ProductPrice price,
      required final int count,
      required final Color color,
      final String? note,
      required final DateTime date}) = _$_Product;
  const _Product._() : super._();

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String get apartmentId => throw _privateConstructorUsedError;
  @override
  ProductName get name => throw _privateConstructorUsedError;
  @override
  String get buyerName => throw _privateConstructorUsedError;
  @override
  String get buyerId => throw _privateConstructorUsedError;
  @override
  ProductPrice get price => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
