// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestToJoin _$RequestToJoinFromJson(Map<String, dynamic> json) {
  return _RequestToJoin.fromJson(json);
}

/// @nodoc
mixin _$RequestToJoin {
  String get userId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get publicExpenseId => throw _privateConstructorUsedError;
  String get publicExpenseName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestToJoinCopyWith<RequestToJoin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestToJoinCopyWith<$Res> {
  factory $RequestToJoinCopyWith(
          RequestToJoin value, $Res Function(RequestToJoin) then) =
      _$RequestToJoinCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String uid,
      String email,
      String publicExpenseId,
      String publicExpenseName});
}

/// @nodoc
class _$RequestToJoinCopyWithImpl<$Res>
    implements $RequestToJoinCopyWith<$Res> {
  _$RequestToJoinCopyWithImpl(this._value, this._then);

  final RequestToJoin _value;
  // ignore: unused_field
  final $Res Function(RequestToJoin) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? uid = freezed,
    Object? email = freezed,
    Object? publicExpenseId = freezed,
    Object? publicExpenseName = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      publicExpenseId: publicExpenseId == freezed
          ? _value.publicExpenseId
          : publicExpenseId // ignore: cast_nullable_to_non_nullable
              as String,
      publicExpenseName: publicExpenseName == freezed
          ? _value.publicExpenseName
          : publicExpenseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RequestToJoinCopyWith<$Res>
    implements $RequestToJoinCopyWith<$Res> {
  factory _$$_RequestToJoinCopyWith(
          _$_RequestToJoin value, $Res Function(_$_RequestToJoin) then) =
      __$$_RequestToJoinCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String uid,
      String email,
      String publicExpenseId,
      String publicExpenseName});
}

/// @nodoc
class __$$_RequestToJoinCopyWithImpl<$Res>
    extends _$RequestToJoinCopyWithImpl<$Res>
    implements _$$_RequestToJoinCopyWith<$Res> {
  __$$_RequestToJoinCopyWithImpl(
      _$_RequestToJoin _value, $Res Function(_$_RequestToJoin) _then)
      : super(_value, (v) => _then(v as _$_RequestToJoin));

  @override
  _$_RequestToJoin get _value => super._value as _$_RequestToJoin;

  @override
  $Res call({
    Object? userId = freezed,
    Object? uid = freezed,
    Object? email = freezed,
    Object? publicExpenseId = freezed,
    Object? publicExpenseName = freezed,
  }) {
    return _then(_$_RequestToJoin(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      publicExpenseId: publicExpenseId == freezed
          ? _value.publicExpenseId
          : publicExpenseId // ignore: cast_nullable_to_non_nullable
              as String,
      publicExpenseName: publicExpenseName == freezed
          ? _value.publicExpenseName
          : publicExpenseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestToJoin extends _RequestToJoin {
  const _$_RequestToJoin(
      {required this.userId,
      required this.uid,
      required this.email,
      required this.publicExpenseId,
      required this.publicExpenseName})
      : super._();

  factory _$_RequestToJoin.fromJson(Map<String, dynamic> json) =>
      _$$_RequestToJoinFromJson(json);

  @override
  final String userId;
  @override
  final String uid;
  @override
  final String email;
  @override
  final String publicExpenseId;
  @override
  final String publicExpenseName;

  @override
  String toString() {
    return 'RequestToJoin(userId: $userId, uid: $uid, email: $email, publicExpenseId: $publicExpenseId, publicExpenseName: $publicExpenseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestToJoin &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.publicExpenseId, publicExpenseId) &&
            const DeepCollectionEquality()
                .equals(other.publicExpenseName, publicExpenseName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(publicExpenseId),
      const DeepCollectionEquality().hash(publicExpenseName));

  @JsonKey(ignore: true)
  @override
  _$$_RequestToJoinCopyWith<_$_RequestToJoin> get copyWith =>
      __$$_RequestToJoinCopyWithImpl<_$_RequestToJoin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestToJoinToJson(
      this,
    );
  }
}

abstract class _RequestToJoin extends RequestToJoin {
  const factory _RequestToJoin(
      {required final String userId,
      required final String uid,
      required final String email,
      required final String publicExpenseId,
      required final String publicExpenseName}) = _$_RequestToJoin;
  const _RequestToJoin._() : super._();

  factory _RequestToJoin.fromJson(Map<String, dynamic> json) =
      _$_RequestToJoin.fromJson;

  @override
  String get userId;
  @override
  String get uid;
  @override
  String get email;
  @override
  String get publicExpenseId;
  @override
  String get publicExpenseName;
  @override
  @JsonKey(ignore: true)
  _$$_RequestToJoinCopyWith<_$_RequestToJoin> get copyWith =>
      throw _privateConstructorUsedError;
}
