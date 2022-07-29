// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listen,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Listen value) listen,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionEventCopyWith<$Res> {
  factory $ConnectionEventCopyWith(
          ConnectionEvent value, $Res Function(ConnectionEvent) then) =
      _$ConnectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionEventCopyWithImpl<$Res>
    implements $ConnectionEventCopyWith<$Res> {
  _$ConnectionEventCopyWithImpl(this._value, this._then);

  final ConnectionEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectionEvent) _then;
}

/// @nodoc
abstract class _$$_ListenCopyWith<$Res> {
  factory _$$_ListenCopyWith(_$_Listen value, $Res Function(_$_Listen) then) =
      __$$_ListenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListenCopyWithImpl<$Res> extends _$ConnectionEventCopyWithImpl<$Res>
    implements _$$_ListenCopyWith<$Res> {
  __$$_ListenCopyWithImpl(_$_Listen _value, $Res Function(_$_Listen) _then)
      : super(_value, (v) => _then(v as _$_Listen));

  @override
  _$_Listen get _value => super._value as _$_Listen;
}

/// @nodoc

class _$_Listen implements _Listen {
  const _$_Listen();

  @override
  String toString() {
    return 'ConnectionEvent.listen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Listen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listen,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return listen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return listen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (listen != null) {
      return listen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Listen value) listen,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return listen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return listen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (listen != null) {
      return listen(this);
    }
    return orElse();
  }
}

abstract class _Listen implements ConnectionEvent {
  const factory _Listen() = _$_Listen;
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$ConnectionEventCopyWithImpl<$Res>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, (v) => _then(v as _$_Connected));

  @override
  _$_Connected get _value => super._value as _$_Connected;
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected();

  @override
  String toString() {
    return 'ConnectionEvent.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listen,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Listen value) listen,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements ConnectionEvent {
  const factory _Connected() = _$_Connected;
}

/// @nodoc
abstract class _$$_DisconnectedCopyWith<$Res> {
  factory _$$_DisconnectedCopyWith(
          _$_Disconnected value, $Res Function(_$_Disconnected) then) =
      __$$_DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisconnectedCopyWithImpl<$Res>
    extends _$ConnectionEventCopyWithImpl<$Res>
    implements _$$_DisconnectedCopyWith<$Res> {
  __$$_DisconnectedCopyWithImpl(
      _$_Disconnected _value, $Res Function(_$_Disconnected) _then)
      : super(_value, (v) => _then(v as _$_Disconnected));

  @override
  _$_Disconnected get _value => super._value as _$_Disconnected;
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected();

  @override
  String toString() {
    return 'ConnectionEvent.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listen,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listen,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Listen value) listen,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Listen value)? listen,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements ConnectionEvent {
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
mixin _$ConnectionState {
  Option<bool> get connected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionStateCopyWith<ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res>;
  $Res call({Option<bool> connected});
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  final ConnectionState _value;
  // ignore: unused_field
  final $Res Function(ConnectionState) _then;

  @override
  $Res call({
    Object? connected = freezed,
  }) {
    return _then(_value.copyWith(
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc
abstract class _$$_ConnectionStateCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$$_ConnectionStateCopyWith(
          _$_ConnectionState value, $Res Function(_$_ConnectionState) then) =
      __$$_ConnectionStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<bool> connected});
}

/// @nodoc
class __$$_ConnectionStateCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res>
    implements _$$_ConnectionStateCopyWith<$Res> {
  __$$_ConnectionStateCopyWithImpl(
      _$_ConnectionState _value, $Res Function(_$_ConnectionState) _then)
      : super(_value, (v) => _then(v as _$_ConnectionState));

  @override
  _$_ConnectionState get _value => super._value as _$_ConnectionState;

  @override
  $Res call({
    Object? connected = freezed,
  }) {
    return _then(_$_ConnectionState(
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$_ConnectionState implements _ConnectionState {
  const _$_ConnectionState({required this.connected});

  @override
  final Option<bool> connected;

  @override
  String toString() {
    return 'ConnectionState(connected: $connected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionState &&
            const DeepCollectionEquality().equals(other.connected, connected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(connected));

  @JsonKey(ignore: true)
  @override
  _$$_ConnectionStateCopyWith<_$_ConnectionState> get copyWith =>
      __$$_ConnectionStateCopyWithImpl<_$_ConnectionState>(this, _$identity);
}

abstract class _ConnectionState implements ConnectionState {
  const factory _ConnectionState({required final Option<bool> connected}) =
      _$_ConnectionState;

  @override
  Option<bool> get connected;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionStateCopyWith<_$_ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
