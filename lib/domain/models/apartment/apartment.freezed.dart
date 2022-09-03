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

PublicExpense _$PublicExpenseFromJson(Map<String, dynamic> json) {
  return _Apartment.fromJson(json);
}

/// @nodoc
mixin _$PublicExpense {
  String get uid => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicExpenseCopyWith<PublicExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicExpenseCopyWith<$Res> {
  factory $PublicExpenseCopyWith(
          PublicExpense value, $Res Function(PublicExpense) then) =
      _$PublicExpenseCopyWithImpl<$Res>;
  $Res call({String uid, String? ownerId, String name, List<String> users});
}

/// @nodoc
class _$PublicExpenseCopyWithImpl<$Res>
    implements $PublicExpenseCopyWith<$Res> {
  _$PublicExpenseCopyWithImpl(this._value, this._then);

  final PublicExpense _value;
  // ignore: unused_field
  final $Res Function(PublicExpense) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ApartmentCopyWith<$Res>
    implements $PublicExpenseCopyWith<$Res> {
  factory _$$_ApartmentCopyWith(
          _$_Apartment value, $Res Function(_$_Apartment) then) =
      __$$_ApartmentCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String? ownerId, String name, List<String> users});
}

/// @nodoc
class __$$_ApartmentCopyWithImpl<$Res> extends _$PublicExpenseCopyWithImpl<$Res>
    implements _$$_ApartmentCopyWith<$Res> {
  __$$_ApartmentCopyWithImpl(
      _$_Apartment _value, $Res Function(_$_Apartment) _then)
      : super(_value, (v) => _then(v as _$_Apartment));

  @override
  _$_Apartment get _value => super._value as _$_Apartment;

  @override
  $Res call({
    Object? uid = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? users = freezed,
  }) {
    return _then(_$_Apartment(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Apartment extends _Apartment {
  const _$_Apartment(
      {this.uid = '',
      this.ownerId,
      this.name = '',
      final List<String> users = const []})
      : _users = users,
        super._();

  factory _$_Apartment.fromJson(Map<String, dynamic> json) =>
      _$$_ApartmentFromJson(json);

  @override
  @JsonKey()
  final String uid;
  @override
  final String? ownerId;
  @override
  @JsonKey()
  final String name;
  final List<String> _users;
  @override
  @JsonKey()
  List<String> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'PublicExpense(uid: $uid, ownerId: $ownerId, name: $name, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Apartment &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$_ApartmentCopyWith<_$_Apartment> get copyWith =>
      __$$_ApartmentCopyWithImpl<_$_Apartment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApartmentToJson(
      this,
    );
  }
}

abstract class _Apartment extends PublicExpense {
  const factory _Apartment(
      {final String uid,
      final String? ownerId,
      final String name,
      final List<String> users}) = _$_Apartment;
  const _Apartment._() : super._();

  factory _Apartment.fromJson(Map<String, dynamic> json) =
      _$_Apartment.fromJson;

  @override
  String get uid;
  @override
  String? get ownerId;
  @override
  String get name;
  @override
  List<String> get users;
  @override
  @JsonKey(ignore: true)
  _$$_ApartmentCopyWith<_$_Apartment> get copyWith =>
      throw _privateConstructorUsedError;
}
