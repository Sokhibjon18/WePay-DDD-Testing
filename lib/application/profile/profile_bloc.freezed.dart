// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(int color) colorChanged,
    required TResult Function() saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_SaveChanged value) saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(int color) colorChanged,
    required TResult Function() saveChanges,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_SaveChanged value) saveChanges,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ProfileEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(int color) colorChanged,
    required TResult Function() saveChanges,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
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
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_SaveChanged value) saveChanges,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ProfileEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, (v) => _then(v as _$_NameChanged));

  @override
  _$_NameChanged get _value => super._value as _$_NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(int color) colorChanged,
    required TResult Function() saveChanges,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
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
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_SaveChanged value) saveChanges,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProfileEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColorChangedCopyWith<$Res> {
  factory _$$_ColorChangedCopyWith(
          _$_ColorChanged value, $Res Function(_$_ColorChanged) then) =
      __$$_ColorChangedCopyWithImpl<$Res>;
  $Res call({int color});
}

/// @nodoc
class __$$_ColorChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_ColorChangedCopyWith<$Res> {
  __$$_ColorChangedCopyWithImpl(
      _$_ColorChanged _value, $Res Function(_$_ColorChanged) _then)
      : super(_value, (v) => _then(v as _$_ColorChanged));

  @override
  _$_ColorChanged get _value => super._value as _$_ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_ColorChanged(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final int color;

  @override
  String toString() {
    return 'ProfileEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorChanged &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      __$$_ColorChangedCopyWithImpl<_$_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(int color) colorChanged,
    required TResult Function() saveChanges,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_SaveChanged value) saveChanges,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements ProfileEvent {
  const factory _ColorChanged(final int color) = _$_ColorChanged;

  int get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveChangedCopyWith<$Res> {
  factory _$$_SaveChangedCopyWith(
          _$_SaveChanged value, $Res Function(_$_SaveChanged) then) =
      __$$_SaveChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_SaveChangedCopyWith<$Res> {
  __$$_SaveChangedCopyWithImpl(
      _$_SaveChanged _value, $Res Function(_$_SaveChanged) _then)
      : super(_value, (v) => _then(v as _$_SaveChanged));

  @override
  _$_SaveChanged get _value => super._value as _$_SaveChanged;
}

/// @nodoc

class _$_SaveChanged implements _SaveChanged {
  const _$_SaveChanged();

  @override
  String toString() {
    return 'ProfileEvent.saveChanges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(int color) colorChanged,
    required TResult Function() saveChanges,
  }) {
    return saveChanges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
  }) {
    return saveChanges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(int color)? colorChanged,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_SaveChanged value) saveChanges,
  }) {
    return saveChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
  }) {
    return saveChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_SaveChanged value)? saveChanges,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges(this);
    }
    return orElse();
  }
}

abstract class _SaveChanged implements ProfileEvent {
  const factory _SaveChanged() = _$_SaveChanged;
}

/// @nodoc
mixin _$ProfileState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, UserModel>> get user =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Name name,
      int color,
      bool showErrorMessage,
      bool isLoading,
      Option<Either<ProfileFailure, Unit>> failureOrSuccessOption,
      Option<Either<ProfileFailure, UserModel>> user});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? showErrorMessage = freezed,
    Object? isLoading = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, UserModel>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Name name,
      int color,
      bool showErrorMessage,
      bool isLoading,
      Option<Either<ProfileFailure, Unit>> failureOrSuccessOption,
      Option<Either<ProfileFailure, UserModel>> user});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? showErrorMessage = freezed,
    Object? isLoading = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_ProfileState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, UserModel>>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.email,
      required this.name,
      required this.color,
      required this.showErrorMessage,
      required this.isLoading,
      required this.failureOrSuccessOption,
      required this.user});

  @override
  final EmailAddress email;
  @override
  final Name name;
  @override
  final int color;
  @override
  final bool showErrorMessage;
  @override
  final bool isLoading;
  @override
  final Option<Either<ProfileFailure, Unit>> failureOrSuccessOption;
  @override
  final Option<Either<ProfileFailure, UserModel>> user;

  @override
  String toString() {
    return 'ProfileState(email: $email, name: $name, color: $color, showErrorMessage: $showErrorMessage, isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOrSuccessOption),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
          {required final EmailAddress email,
          required final Name name,
          required final int color,
          required final bool showErrorMessage,
          required final bool isLoading,
          required final Option<Either<ProfileFailure, Unit>>
              failureOrSuccessOption,
          required final Option<Either<ProfileFailure, UserModel>> user}) =
      _$_ProfileState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  int get color => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<ProfileFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<ProfileFailure, UserModel>> get user =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
