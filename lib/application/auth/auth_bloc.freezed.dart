// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthEvent {
  const factory EmailChanged(final String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  const factory PasswordChanged(final String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, (v) => _then(v as _$NameChanged));

  @override
  _$NameChanged get _value => super._value as _$NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements AuthEvent {
  const factory NameChanged(final String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResigisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$$ResigisterWithEmailAndPasswordCopyWith(
          _$ResigisterWithEmailAndPassword value,
          $Res Function(_$ResigisterWithEmailAndPassword) then) =
      __$$ResigisterWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResigisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$ResigisterWithEmailAndPasswordCopyWith<$Res> {
  __$$ResigisterWithEmailAndPasswordCopyWithImpl(
      _$ResigisterWithEmailAndPassword _value,
      $Res Function(_$ResigisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _$ResigisterWithEmailAndPassword));

  @override
  _$ResigisterWithEmailAndPassword get _value =>
      super._value as _$ResigisterWithEmailAndPassword;
}

/// @nodoc

class _$ResigisterWithEmailAndPassword
    implements ResigisterWithEmailAndPassword {
  const _$ResigisterWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.registerWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResigisterWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) {
    return registerWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) {
    return registerWithEmailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class ResigisterWithEmailAndPassword implements AuthEvent {
  const factory ResigisterWithEmailAndPassword() =
      _$ResigisterWithEmailAndPassword;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordCopyWith(
          _$SignInWithEmailAndPassword value,
          $Res Function(_$SignInWithEmailAndPassword) then) =
      __$$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$SignInWithEmailAndPasswordCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordCopyWithImpl(
      _$SignInWithEmailAndPassword _value,
      $Res Function(_$SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _$SignInWithEmailAndPassword));

  @override
  _$SignInWithEmailAndPassword get _value =>
      super._value as _$SignInWithEmailAndPassword;
}

/// @nodoc

class _$SignInWithEmailAndPassword implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) {
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) {
    return signInWithEmailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements AuthEvent {
  const factory SignInWithEmailAndPassword() = _$SignInWithEmailAndPassword;
}

/// @nodoc
abstract class _$$SignInWithGoogleCopyWith<$Res> {
  factory _$$SignInWithGoogleCopyWith(
          _$SignInWithGoogle value, $Res Function(_$SignInWithGoogle) then) =
      __$$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$SignInWithGoogleCopyWith<$Res> {
  __$$SignInWithGoogleCopyWithImpl(
      _$SignInWithGoogle _value, $Res Function(_$SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _$SignInWithGoogle));

  @override
  _$SignInWithGoogle get _value => super._value as _$SignInWithGoogle;
}

/// @nodoc

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements AuthEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, (v) => _then(v as _$Refresh));

  @override
  _$Refresh get _value => super._value as _$Refresh;
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'AuthEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ResigisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ResigisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements AuthEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
mixin _$AuthState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Name name,
      Password password,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? showErrorMessage = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthFormStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthFormStateCopyWith(
          _$_AuthFormState value, $Res Function(_$_AuthFormState) then) =
      __$$_AuthFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Name name,
      Password password,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_AuthFormStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthFormStateCopyWith<$Res> {
  __$$_AuthFormStateCopyWithImpl(
      _$_AuthFormState _value, $Res Function(_$_AuthFormState) _then)
      : super(_value, (v) => _then(v as _$_AuthFormState));

  @override
  _$_AuthFormState get _value => super._value as _$_AuthFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? showErrorMessage = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_AuthFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthFormState implements _AuthFormState {
  const _$_AuthFormState(
      {required this.emailAddress,
      required this.name,
      required this.password,
      required this.showErrorMessage,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Name name;
  @override
  final Password password;
  @override
  final bool showErrorMessage;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(emailAddress: $emailAddress, name: $name, password: $password, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_AuthFormStateCopyWith<_$_AuthFormState> get copyWith =>
      __$$_AuthFormStateCopyWithImpl<_$_AuthFormState>(this, _$identity);
}

abstract class _AuthFormState implements AuthState {
  const factory _AuthFormState(
      {required final EmailAddress emailAddress,
      required final Name name,
      required final Password password,
      required final bool showErrorMessage,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_AuthFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Name get name;
  @override
  Password get password;
  @override
  bool get showErrorMessage;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_AuthFormStateCopyWith<_$_AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
