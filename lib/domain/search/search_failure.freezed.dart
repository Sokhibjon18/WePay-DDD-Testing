// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(NotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFailureCopyWith<$Res> {
  factory $SearchFailureCopyWith(
          SearchFailure value, $Res Function(SearchFailure) then) =
      _$SearchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchFailureCopyWithImpl<$Res>
    implements $SearchFailureCopyWith<$Res> {
  _$SearchFailureCopyWithImpl(this._value, this._then);

  final SearchFailure _value;
  // ignore: unused_field
  final $Res Function(SearchFailure) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$SearchFailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ServerFailure(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchFailure.server(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() notFound,
  }) {
    return server(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
  }) {
    return server?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(NotFound value) notFound,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements SearchFailure {
  const factory ServerFailure({final String? errorMessage}) = _$ServerFailure;

  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res> extends _$SearchFailureCopyWithImpl<$Res>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, (v) => _then(v as _$Unexpected));

  @override
  _$Unexpected get _value => super._value as _$Unexpected;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$Unexpected(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SearchFailure.unexpected(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unexpected &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      __$$UnexpectedCopyWithImpl<_$Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() notFound,
  }) {
    return unexpected(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
  }) {
    return unexpected?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(NotFound value) notFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements SearchFailure {
  const factory Unexpected(final String errorMessage) = _$Unexpected;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAlreadyAddedCopyWith<$Res> {
  factory _$$UserAlreadyAddedCopyWith(
          _$UserAlreadyAdded value, $Res Function(_$UserAlreadyAdded) then) =
      __$$UserAlreadyAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAlreadyAddedCopyWithImpl<$Res>
    extends _$SearchFailureCopyWithImpl<$Res>
    implements _$$UserAlreadyAddedCopyWith<$Res> {
  __$$UserAlreadyAddedCopyWithImpl(
      _$UserAlreadyAdded _value, $Res Function(_$UserAlreadyAdded) _then)
      : super(_value, (v) => _then(v as _$UserAlreadyAdded));

  @override
  _$UserAlreadyAdded get _value => super._value as _$UserAlreadyAdded;
}

/// @nodoc

class _$UserAlreadyAdded implements UserAlreadyAdded {
  const _$UserAlreadyAdded();

  @override
  String toString() {
    return 'SearchFailure.userAlreadyAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAlreadyAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() notFound,
  }) {
    return userAlreadyAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
  }) {
    return userAlreadyAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (userAlreadyAdded != null) {
      return userAlreadyAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(NotFound value) notFound,
  }) {
    return userAlreadyAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
  }) {
    return userAlreadyAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (userAlreadyAdded != null) {
      return userAlreadyAdded(this);
    }
    return orElse();
  }
}

abstract class UserAlreadyAdded implements SearchFailure {
  const factory UserAlreadyAdded() = _$UserAlreadyAdded;
}

/// @nodoc
abstract class _$$NotFoundCopyWith<$Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound value, $Res Function(_$NotFound) then) =
      __$$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundCopyWithImpl<$Res> extends _$SearchFailureCopyWithImpl<$Res>
    implements _$$NotFoundCopyWith<$Res> {
  __$$NotFoundCopyWithImpl(_$NotFound _value, $Res Function(_$NotFound) _then)
      : super(_value, (v) => _then(v as _$NotFound));

  @override
  _$NotFound get _value => super._value as _$NotFound;
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound();

  @override
  String toString() {
    return 'SearchFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(NotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements SearchFailure {
  const factory NotFound() = _$NotFound;
}
