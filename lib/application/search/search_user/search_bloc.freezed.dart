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
  int get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) search,
    required TResult Function(int userId, String apartmentId) sendInvitation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? search,
    TResult Function(int userId, String apartmentId)? sendInvitation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? search,
    TResult Function(int userId, String apartmentId)? sendInvitation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SendInvitation value) sendInvitation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SendInvitation value)? sendInvitation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SendInvitation value)? sendInvitation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @override
  $Res call({int userId});
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
    Object? userId = freezed,
  }) {
    return _then(_$_Search(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'SearchEvent.search(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) search,
    required TResult Function(int userId, String apartmentId) sendInvitation,
  }) {
    return search(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? search,
    TResult Function(int userId, String apartmentId)? sendInvitation,
  }) {
    return search?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? search,
    TResult Function(int userId, String apartmentId)? sendInvitation,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SendInvitation value) sendInvitation,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SendInvitation value)? sendInvitation,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SendInvitation value)? sendInvitation,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search(final int userId) = _$_Search;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendInvitationCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$_SendInvitationCopyWith(
          _$_SendInvitation value, $Res Function(_$_SendInvitation) then) =
      __$$_SendInvitationCopyWithImpl<$Res>;
  @override
  $Res call({int userId, String apartmentId});
}

/// @nodoc
class __$$_SendInvitationCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_SendInvitationCopyWith<$Res> {
  __$$_SendInvitationCopyWithImpl(
      _$_SendInvitation _value, $Res Function(_$_SendInvitation) _then)
      : super(_value, (v) => _then(v as _$_SendInvitation));

  @override
  _$_SendInvitation get _value => super._value as _$_SendInvitation;

  @override
  $Res call({
    Object? userId = freezed,
    Object? apartmentId = freezed,
  }) {
    return _then(_$_SendInvitation(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      apartmentId == freezed
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendInvitation implements _SendInvitation {
  const _$_SendInvitation(this.userId, this.apartmentId);

  @override
  final int userId;
  @override
  final String apartmentId;

  @override
  String toString() {
    return 'SearchEvent.sendInvitation(userId: $userId, apartmentId: $apartmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendInvitation &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.apartmentId, apartmentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(apartmentId));

  @JsonKey(ignore: true)
  @override
  _$$_SendInvitationCopyWith<_$_SendInvitation> get copyWith =>
      __$$_SendInvitationCopyWithImpl<_$_SendInvitation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) search,
    required TResult Function(int userId, String apartmentId) sendInvitation,
  }) {
    return sendInvitation(userId, apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? search,
    TResult Function(int userId, String apartmentId)? sendInvitation,
  }) {
    return sendInvitation?.call(userId, apartmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? search,
    TResult Function(int userId, String apartmentId)? sendInvitation,
    required TResult orElse(),
  }) {
    if (sendInvitation != null) {
      return sendInvitation(userId, apartmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SendInvitation value) sendInvitation,
  }) {
    return sendInvitation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SendInvitation value)? sendInvitation,
  }) {
    return sendInvitation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SendInvitation value)? sendInvitation,
    required TResult orElse(),
  }) {
    if (sendInvitation != null) {
      return sendInvitation(this);
    }
    return orElse();
  }
}

abstract class _SendInvitation implements SearchEvent {
  const factory _SendInvitation(final int userId, final String apartmentId) =
      _$_SendInvitation;

  @override
  int get userId;
  String get apartmentId;
  @override
  @JsonKey(ignore: true)
  _$$_SendInvitationCopyWith<_$_SendInvitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get firstTime => throw _privateConstructorUsedError;
  bool get sendingRequest => throw _privateConstructorUsedError;
  Either<SearchFailure, UserModel>? get userOrFailure =>
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
      bool firstTime,
      bool sendingRequest,
      Either<SearchFailure, UserModel>? userOrFailure});
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
    Object? firstTime = freezed,
    Object? sendingRequest = freezed,
    Object? userOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstTime: firstTime == freezed
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingRequest: sendingRequest == freezed
          ? _value.sendingRequest
          : sendingRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      userOrFailure: userOrFailure == freezed
          ? _value.userOrFailure
          : userOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<SearchFailure, UserModel>?,
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
      bool firstTime,
      bool sendingRequest,
      Either<SearchFailure, UserModel>? userOrFailure});
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
    Object? firstTime = freezed,
    Object? sendingRequest = freezed,
    Object? userOrFailure = freezed,
  }) {
    return _then(_$_SearchState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstTime: firstTime == freezed
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingRequest: sendingRequest == freezed
          ? _value.sendingRequest
          : sendingRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      userOrFailure: userOrFailure == freezed
          ? _value.userOrFailure
          : userOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<SearchFailure, UserModel>?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.firstTime,
      required this.sendingRequest,
      required this.userOrFailure});

  @override
  final bool isLoading;
  @override
  final bool firstTime;
  @override
  final bool sendingRequest;
  @override
  final Either<SearchFailure, UserModel>? userOrFailure;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, firstTime: $firstTime, sendingRequest: $sendingRequest, userOrFailure: $userOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.firstTime, firstTime) &&
            const DeepCollectionEquality()
                .equals(other.sendingRequest, sendingRequest) &&
            const DeepCollectionEquality()
                .equals(other.userOrFailure, userOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(firstTime),
      const DeepCollectionEquality().hash(sendingRequest),
      const DeepCollectionEquality().hash(userOrFailure));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
          {required final bool isLoading,
          required final bool firstTime,
          required final bool sendingRequest,
          required final Either<SearchFailure, UserModel>? userOrFailure}) =
      _$_SearchState;

  @override
  bool get isLoading;
  @override
  bool get firstTime;
  @override
  bool get sendingRequest;
  @override
  Either<SearchFailure, UserModel>? get userOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
