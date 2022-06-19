// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'apartment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Apartment _$ApartmentFromJson(Map<String, dynamic> json) {
  return _Apartment.fromJson(json);
}

/// @nodoc
mixin _$Apartment {
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApartmentCopyWith<Apartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApartmentCopyWith<$Res> {
  factory $ApartmentCopyWith(Apartment value, $Res Function(Apartment) then) =
      _$ApartmentCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$ApartmentCopyWithImpl<$Res> implements $ApartmentCopyWith<$Res> {
  _$ApartmentCopyWithImpl(this._value, this._then);

  final Apartment _value;
  // ignore: unused_field
  final $Res Function(Apartment) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ApartmentCopyWith<$Res> implements $ApartmentCopyWith<$Res> {
  factory _$$_ApartmentCopyWith(
          _$_Apartment value, $Res Function(_$_Apartment) then) =
      __$$_ApartmentCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$$_ApartmentCopyWithImpl<$Res> extends _$ApartmentCopyWithImpl<$Res>
    implements _$$_ApartmentCopyWith<$Res> {
  __$$_ApartmentCopyWithImpl(
      _$_Apartment _value, $Res Function(_$_Apartment) _then)
      : super(_value, (v) => _then(v as _$_Apartment));

  @override
  _$_Apartment get _value => super._value as _$_Apartment;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_Apartment(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Apartment extends _Apartment {
  const _$_Apartment({required this.uid}) : super._();

  factory _$_Apartment.fromJson(Map<String, dynamic> json) =>
      _$$_ApartmentFromJson(json);

  @override
  final String uid;

  @override
  String toString() {
    return 'Apartment(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Apartment &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_ApartmentCopyWith<_$_Apartment> get copyWith =>
      __$$_ApartmentCopyWithImpl<_$_Apartment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApartmentToJson(this);
  }
}

abstract class _Apartment extends Apartment {
  const factory _Apartment({required final String uid}) = _$_Apartment;
  const _Apartment._() : super._();

  factory _Apartment.fromJson(Map<String, dynamic> json) =
      _$_Apartment.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApartmentCopyWith<_$_Apartment> get copyWith =>
      throw _privateConstructorUsedError;
}
