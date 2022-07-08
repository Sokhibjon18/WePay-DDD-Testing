// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() haveRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(_HaveRequest value) haveRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFailureCopyWith<$Res> {
  factory $RequestFailureCopyWith(
          RequestFailure value, $Res Function(RequestFailure) then) =
      _$RequestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFailureCopyWithImpl<$Res>
    implements $RequestFailureCopyWith<$Res> {
  _$RequestFailureCopyWithImpl(this._value, this._then);

  final RequestFailure _value;
  // ignore: unused_field
  final $Res Function(RequestFailure) _then;
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, (v) => _then(v as _$_ServerFailure));

  @override
  _$_ServerFailure get _value => super._value as _$_ServerFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ServerFailure(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RequestFailure.server(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      __$$_ServerFailureCopyWithImpl<_$_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() haveRequest,
  }) {
    return server(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
  }) {
    return server?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
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
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(_HaveRequest value) haveRequest,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements RequestFailure {
  const factory _ServerFailure({final String? errorMessage}) = _$_ServerFailure;

  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, (v) => _then(v as _$_Unexpected));

  @override
  _$_Unexpected get _value => super._value as _$_Unexpected;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Unexpected(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RequestFailure.unexpected(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() haveRequest,
  }) {
    return unexpected(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
  }) {
    return unexpected?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
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
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(_HaveRequest value) haveRequest,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements RequestFailure {
  const factory _Unexpected(final String errorMessage) = _$_Unexpected;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserAlreadyAddedCopyWith<$Res> {
  factory _$$_UserAlreadyAddedCopyWith(
          _$_UserAlreadyAdded value, $Res Function(_$_UserAlreadyAdded) then) =
      __$$_UserAlreadyAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserAlreadyAddedCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements _$$_UserAlreadyAddedCopyWith<$Res> {
  __$$_UserAlreadyAddedCopyWithImpl(
      _$_UserAlreadyAdded _value, $Res Function(_$_UserAlreadyAdded) _then)
      : super(_value, (v) => _then(v as _$_UserAlreadyAdded));

  @override
  _$_UserAlreadyAdded get _value => super._value as _$_UserAlreadyAdded;
}

/// @nodoc

class _$_UserAlreadyAdded implements _UserAlreadyAdded {
  const _$_UserAlreadyAdded();

  @override
  String toString() {
    return 'RequestFailure.userAlreadyAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserAlreadyAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() haveRequest,
  }) {
    return userAlreadyAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
  }) {
    return userAlreadyAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
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
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(_HaveRequest value) haveRequest,
  }) {
    return userAlreadyAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
  }) {
    return userAlreadyAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
    required TResult orElse(),
  }) {
    if (userAlreadyAdded != null) {
      return userAlreadyAdded(this);
    }
    return orElse();
  }
}

abstract class _UserAlreadyAdded implements RequestFailure {
  const factory _UserAlreadyAdded() = _$_UserAlreadyAdded;
}

/// @nodoc
abstract class _$$_HaveRequestCopyWith<$Res> {
  factory _$$_HaveRequestCopyWith(
          _$_HaveRequest value, $Res Function(_$_HaveRequest) then) =
      __$$_HaveRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HaveRequestCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements _$$_HaveRequestCopyWith<$Res> {
  __$$_HaveRequestCopyWithImpl(
      _$_HaveRequest _value, $Res Function(_$_HaveRequest) _then)
      : super(_value, (v) => _then(v as _$_HaveRequest));

  @override
  _$_HaveRequest get _value => super._value as _$_HaveRequest;
}

/// @nodoc

class _$_HaveRequest implements _HaveRequest {
  const _$_HaveRequest();

  @override
  String toString() {
    return 'RequestFailure.haveRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HaveRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) server,
    required TResult Function(String errorMessage) unexpected,
    required TResult Function() userAlreadyAdded,
    required TResult Function() haveRequest,
  }) {
    return haveRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
  }) {
    return haveRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? server,
    TResult Function(String errorMessage)? unexpected,
    TResult Function()? userAlreadyAdded,
    TResult Function()? haveRequest,
    required TResult orElse(),
  }) {
    if (haveRequest != null) {
      return haveRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserAlreadyAdded value) userAlreadyAdded,
    required TResult Function(_HaveRequest value) haveRequest,
  }) {
    return haveRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
  }) {
    return haveRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserAlreadyAdded value)? userAlreadyAdded,
    TResult Function(_HaveRequest value)? haveRequest,
    required TResult orElse(),
  }) {
    if (haveRequest != null) {
      return haveRequest(this);
    }
    return orElse();
  }
}

abstract class _HaveRequest implements RequestFailure {
  const factory _HaveRequest() = _$_HaveRequest;
}
