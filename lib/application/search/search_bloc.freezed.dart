// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) search,
    required TResult Function() showAllApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? search,
    TResult Function()? showAllApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? search,
    TResult Function()? showAllApartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowAllApartment value) showAllApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowAllApartment value)? showAllApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowAllApartment value)? showAllApartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, (v) => _then(v as _$_Search));

  @override
  _$_Search get _value => super._value as _$_Search;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_Search(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'SearchEvent.search(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) search,
    required TResult Function() showAllApartment,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? search,
    TResult Function()? showAllApartment,
  }) {
    return search?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? search,
    TResult Function()? showAllApartment,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowAllApartment value) showAllApartment,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowAllApartment value)? showAllApartment,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowAllApartment value)? showAllApartment,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search(final String text) = _$_Search;

  String get text;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowAllApartmentCopyWith<$Res> {
  factory _$$_ShowAllApartmentCopyWith(
          _$_ShowAllApartment value, $Res Function(_$_ShowAllApartment) then) =
      __$$_ShowAllApartmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowAllApartmentCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_ShowAllApartmentCopyWith<$Res> {
  __$$_ShowAllApartmentCopyWithImpl(
      _$_ShowAllApartment _value, $Res Function(_$_ShowAllApartment) _then)
      : super(_value, (v) => _then(v as _$_ShowAllApartment));

  @override
  _$_ShowAllApartment get _value => super._value as _$_ShowAllApartment;
}

/// @nodoc

class _$_ShowAllApartment implements _ShowAllApartment {
  const _$_ShowAllApartment();

  @override
  String toString() {
    return 'SearchEvent.showAllApartment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowAllApartment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) search,
    required TResult Function() showAllApartment,
  }) {
    return showAllApartment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? search,
    TResult Function()? showAllApartment,
  }) {
    return showAllApartment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? search,
    TResult Function()? showAllApartment,
    required TResult orElse(),
  }) {
    if (showAllApartment != null) {
      return showAllApartment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowAllApartment value) showAllApartment,
  }) {
    return showAllApartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowAllApartment value)? showAllApartment,
  }) {
    return showAllApartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowAllApartment value)? showAllApartment,
    required TResult orElse(),
  }) {
    if (showAllApartment != null) {
      return showAllApartment(this);
    }
    return orElse();
  }
}

abstract class _ShowAllApartment implements SearchEvent {
  const factory _ShowAllApartment() = _$_ShowAllApartment;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get sendingRequest => throw _privateConstructorUsedError;
  Option<Either<SearchFailure, List<Apartment>>> get listOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool sendingRequest,
      Option<Either<SearchFailure, List<Apartment>>> listOrFailure});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? sendingRequest = freezed,
    Object? listOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingRequest: sendingRequest == freezed
          ? _value.sendingRequest
          : sendingRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchFailure, List<Apartment>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool sendingRequest,
      Option<Either<SearchFailure, List<Apartment>>> listOrFailure});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? sendingRequest = freezed,
    Object? listOrFailure = freezed,
  }) {
    return _then(_$_SearchState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingRequest: sendingRequest == freezed
          ? _value.sendingRequest
          : sendingRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchFailure, List<Apartment>>>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.sendingRequest,
      required this.listOrFailure});

  @override
  final bool isLoading;
  @override
  final bool sendingRequest;
  @override
  final Option<Either<SearchFailure, List<Apartment>>> listOrFailure;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, sendingRequest: $sendingRequest, listOrFailure: $listOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.sendingRequest, sendingRequest) &&
            const DeepCollectionEquality()
                .equals(other.listOrFailure, listOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(sendingRequest),
      const DeepCollectionEquality().hash(listOrFailure));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool sendingRequest,
      required final Option<Either<SearchFailure, List<Apartment>>>
          listOrFailure}) = _$_SearchState;

  @override
  bool get isLoading;
  @override
  bool get sendingRequest;
  @override
  Option<Either<SearchFailure, List<Apartment>>> get listOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
