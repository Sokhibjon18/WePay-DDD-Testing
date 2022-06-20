// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function() invalidEmail,
    required TResult Function(int minLength) shortPassword,
    required TResult Function() paswordsAreNotSame,
    required TResult Function() shortageName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PaswordsAreNotSame<T> value) paswordsAreNotSame,
    required TResult Function(ShortageName<T> value) shortageName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<T, $Res> {
  factory _$$ExceedingLengthCopyWith(_$ExceedingLength<T> value,
          $Res Function(_$ExceedingLength<T>) then) =
      __$$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({int maxLength});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ExceedingLengthCopyWith<T, $Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength<T> _value, $Res Function(_$ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _$ExceedingLength<T>));

  @override
  _$ExceedingLength<T> get _value => super._value as _$ExceedingLength<T>;

  @override
  $Res call({
    Object? maxLength = freezed,
  }) {
    return _then(_$ExceedingLength<T>(
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.maxLength});

  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength<T> &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<T, _$ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function() invalidEmail,
    required TResult Function(int minLength) shortPassword,
    required TResult Function() paswordsAreNotSame,
    required TResult Function() shortageName,
  }) {
    return exceedingLength(maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
  }) {
    return exceedingLength?.call(maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PaswordsAreNotSame<T> value) paswordsAreNotSame,
    required TResult Function(ShortageName<T> value) shortageName,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({required final int maxLength}) =
      _$ExceedingLength<T>;

  int get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, (v) => _then(v as _$Empty<T>));

  @override
  _$Empty<T> get _value => super._value as _$Empty<T>;
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty();

  @override
  String toString() {
    return 'ValueFailure<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Empty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function() invalidEmail,
    required TResult Function(int minLength) shortPassword,
    required TResult Function() paswordsAreNotSame,
    required TResult Function() shortageName,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PaswordsAreNotSame<T> value) paswordsAreNotSame,
    required TResult Function(ShortageName<T> value) shortageName,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty() = _$Empty<T>;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmail<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function() invalidEmail,
    required TResult Function(int minLength) shortPassword,
    required TResult Function() paswordsAreNotSame,
    required TResult Function() shortageName,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PaswordsAreNotSame<T> value) paswordsAreNotSame,
    required TResult Function(ShortageName<T> value) shortageName,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail() = _$InvalidEmail<T>;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({int minLength});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _$ShortPassword<T>));

  @override
  _$ShortPassword<T> get _value => super._value as _$ShortPassword<T>;

  @override
  $Res call({
    Object? minLength = freezed,
  }) {
    return _then(_$ShortPassword<T>(
      minLength: minLength == freezed
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.minLength});

  @override
  final int minLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality().equals(other.minLength, minLength));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(minLength));

  @JsonKey(ignore: true)
  @override
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function() invalidEmail,
    required TResult Function(int minLength) shortPassword,
    required TResult Function() paswordsAreNotSame,
    required TResult Function() shortageName,
  }) {
    return shortPassword(minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
  }) {
    return shortPassword?.call(minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PaswordsAreNotSame<T> value) paswordsAreNotSame,
    required TResult Function(ShortageName<T> value) shortageName,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final int minLength}) =
      _$ShortPassword<T>;

  int get minLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaswordsAreNotSameCopyWith<T, $Res> {
  factory _$$PaswordsAreNotSameCopyWith(_$PaswordsAreNotSame<T> value,
          $Res Function(_$PaswordsAreNotSame<T>) then) =
      __$$PaswordsAreNotSameCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaswordsAreNotSameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$PaswordsAreNotSameCopyWith<T, $Res> {
  __$$PaswordsAreNotSameCopyWithImpl(_$PaswordsAreNotSame<T> _value,
      $Res Function(_$PaswordsAreNotSame<T>) _then)
      : super(_value, (v) => _then(v as _$PaswordsAreNotSame<T>));

  @override
  _$PaswordsAreNotSame<T> get _value => super._value as _$PaswordsAreNotSame<T>;
}

/// @nodoc

class _$PaswordsAreNotSame<T> implements PaswordsAreNotSame<T> {
  const _$PaswordsAreNotSame();

  @override
  String toString() {
    return 'ValueFailure<$T>.paswordsAreNotSame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaswordsAreNotSame<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function() invalidEmail,
    required TResult Function(int minLength) shortPassword,
    required TResult Function() paswordsAreNotSame,
    required TResult Function() shortageName,
  }) {
    return paswordsAreNotSame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
  }) {
    return paswordsAreNotSame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
    required TResult orElse(),
  }) {
    if (paswordsAreNotSame != null) {
      return paswordsAreNotSame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PaswordsAreNotSame<T> value) paswordsAreNotSame,
    required TResult Function(ShortageName<T> value) shortageName,
  }) {
    return paswordsAreNotSame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
  }) {
    return paswordsAreNotSame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
    required TResult orElse(),
  }) {
    if (paswordsAreNotSame != null) {
      return paswordsAreNotSame(this);
    }
    return orElse();
  }
}

abstract class PaswordsAreNotSame<T> implements ValueFailure<T> {
  const factory PaswordsAreNotSame() = _$PaswordsAreNotSame<T>;
}

/// @nodoc
abstract class _$$ShortageNameCopyWith<T, $Res> {
  factory _$$ShortageNameCopyWith(
          _$ShortageName<T> value, $Res Function(_$ShortageName<T>) then) =
      __$$ShortageNameCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ShortageNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ShortageNameCopyWith<T, $Res> {
  __$$ShortageNameCopyWithImpl(
      _$ShortageName<T> _value, $Res Function(_$ShortageName<T>) _then)
      : super(_value, (v) => _then(v as _$ShortageName<T>));

  @override
  _$ShortageName<T> get _value => super._value as _$ShortageName<T>;
}

/// @nodoc

class _$ShortageName<T> implements ShortageName<T> {
  const _$ShortageName();

  @override
  String toString() {
    return 'ValueFailure<$T>.shortageName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShortageName<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function() invalidEmail,
    required TResult Function(int minLength) shortPassword,
    required TResult Function() paswordsAreNotSame,
    required TResult Function() shortageName,
  }) {
    return shortageName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
  }) {
    return shortageName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function()? invalidEmail,
    TResult Function(int minLength)? shortPassword,
    TResult Function()? paswordsAreNotSame,
    TResult Function()? shortageName,
    required TResult orElse(),
  }) {
    if (shortageName != null) {
      return shortageName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PaswordsAreNotSame<T> value) paswordsAreNotSame,
    required TResult Function(ShortageName<T> value) shortageName,
  }) {
    return shortageName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
  }) {
    return shortageName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PaswordsAreNotSame<T> value)? paswordsAreNotSame,
    TResult Function(ShortageName<T> value)? shortageName,
    required TResult orElse(),
  }) {
    if (shortageName != null) {
      return shortageName(this);
    }
    return orElse();
  }
}

abstract class ShortageName<T> implements ValueFailure<T> {
  const factory ShortageName() = _$ShortageName<T>;
}
