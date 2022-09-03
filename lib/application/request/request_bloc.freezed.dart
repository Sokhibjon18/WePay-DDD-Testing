// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PublicExpense publicExpense, String userId)
        inviteUserTo,
    required TResult Function(RequestToJoin request) acceptRequest,
    required TResult Function(RequestToJoin request) rejectRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InviteUserTo value) inviteUserTo,
    required TResult Function(_AcceptRequest value) acceptRequest,
    required TResult Function(_RejectRequest value) rejectRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) then) =
      _$RequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestEventCopyWithImpl<$Res> implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._value, this._then);

  final RequestEvent _value;
  // ignore: unused_field
  final $Res Function(RequestEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$RequestEventCopyWithImpl<$Res>
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
    return 'RequestEvent.started()';
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
    required TResult Function(PublicExpense publicExpense, String userId)
        inviteUserTo,
    required TResult Function(RequestToJoin request) acceptRequest,
    required TResult Function(RequestToJoin request) rejectRequest,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
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
    required TResult Function(_InviteUserTo value) inviteUserTo,
    required TResult Function(_AcceptRequest value) acceptRequest,
    required TResult Function(_RejectRequest value) rejectRequest,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RequestEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_InviteUserToCopyWith<$Res> {
  factory _$$_InviteUserToCopyWith(
          _$_InviteUserTo value, $Res Function(_$_InviteUserTo) then) =
      __$$_InviteUserToCopyWithImpl<$Res>;
  $Res call({PublicExpense publicExpense, String userId});

  $PublicExpenseCopyWith<$Res> get publicExpense;
}

/// @nodoc
class __$$_InviteUserToCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements _$$_InviteUserToCopyWith<$Res> {
  __$$_InviteUserToCopyWithImpl(
      _$_InviteUserTo _value, $Res Function(_$_InviteUserTo) _then)
      : super(_value, (v) => _then(v as _$_InviteUserTo));

  @override
  _$_InviteUserTo get _value => super._value as _$_InviteUserTo;

  @override
  $Res call({
    Object? publicExpense = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_InviteUserTo(
      publicExpense == freezed
          ? _value.publicExpense
          : publicExpense // ignore: cast_nullable_to_non_nullable
              as PublicExpense,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PublicExpenseCopyWith<$Res> get publicExpense {
    return $PublicExpenseCopyWith<$Res>(_value.publicExpense, (value) {
      return _then(_value.copyWith(publicExpense: value));
    });
  }
}

/// @nodoc

class _$_InviteUserTo implements _InviteUserTo {
  const _$_InviteUserTo(this.publicExpense, this.userId);

  @override
  final PublicExpense publicExpense;
  @override
  final String userId;

  @override
  String toString() {
    return 'RequestEvent.inviteUserTo(publicExpense: $publicExpense, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InviteUserTo &&
            const DeepCollectionEquality()
                .equals(other.publicExpense, publicExpense) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicExpense),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_InviteUserToCopyWith<_$_InviteUserTo> get copyWith =>
      __$$_InviteUserToCopyWithImpl<_$_InviteUserTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PublicExpense publicExpense, String userId)
        inviteUserTo,
    required TResult Function(RequestToJoin request) acceptRequest,
    required TResult Function(RequestToJoin request) rejectRequest,
  }) {
    return inviteUserTo(publicExpense, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
  }) {
    return inviteUserTo?.call(publicExpense, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
    required TResult orElse(),
  }) {
    if (inviteUserTo != null) {
      return inviteUserTo(publicExpense, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InviteUserTo value) inviteUserTo,
    required TResult Function(_AcceptRequest value) acceptRequest,
    required TResult Function(_RejectRequest value) rejectRequest,
  }) {
    return inviteUserTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
  }) {
    return inviteUserTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
    required TResult orElse(),
  }) {
    if (inviteUserTo != null) {
      return inviteUserTo(this);
    }
    return orElse();
  }
}

abstract class _InviteUserTo implements RequestEvent {
  const factory _InviteUserTo(
      final PublicExpense publicExpense, final String userId) = _$_InviteUserTo;

  PublicExpense get publicExpense;
  String get userId;
  @JsonKey(ignore: true)
  _$$_InviteUserToCopyWith<_$_InviteUserTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptRequestCopyWith<$Res> {
  factory _$$_AcceptRequestCopyWith(
          _$_AcceptRequest value, $Res Function(_$_AcceptRequest) then) =
      __$$_AcceptRequestCopyWithImpl<$Res>;
  $Res call({RequestToJoin request});

  $RequestToJoinCopyWith<$Res> get request;
}

/// @nodoc
class __$$_AcceptRequestCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements _$$_AcceptRequestCopyWith<$Res> {
  __$$_AcceptRequestCopyWithImpl(
      _$_AcceptRequest _value, $Res Function(_$_AcceptRequest) _then)
      : super(_value, (v) => _then(v as _$_AcceptRequest));

  @override
  _$_AcceptRequest get _value => super._value as _$_AcceptRequest;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$_AcceptRequest(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestToJoin,
    ));
  }

  @override
  $RequestToJoinCopyWith<$Res> get request {
    return $RequestToJoinCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_AcceptRequest implements _AcceptRequest {
  const _$_AcceptRequest(this.request);

  @override
  final RequestToJoin request;

  @override
  String toString() {
    return 'RequestEvent.acceptRequest(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptRequest &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$$_AcceptRequestCopyWith<_$_AcceptRequest> get copyWith =>
      __$$_AcceptRequestCopyWithImpl<_$_AcceptRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PublicExpense publicExpense, String userId)
        inviteUserTo,
    required TResult Function(RequestToJoin request) acceptRequest,
    required TResult Function(RequestToJoin request) rejectRequest,
  }) {
    return acceptRequest(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
  }) {
    return acceptRequest?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InviteUserTo value) inviteUserTo,
    required TResult Function(_AcceptRequest value) acceptRequest,
    required TResult Function(_RejectRequest value) rejectRequest,
  }) {
    return acceptRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
  }) {
    return acceptRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(this);
    }
    return orElse();
  }
}

abstract class _AcceptRequest implements RequestEvent {
  const factory _AcceptRequest(final RequestToJoin request) = _$_AcceptRequest;

  RequestToJoin get request;
  @JsonKey(ignore: true)
  _$$_AcceptRequestCopyWith<_$_AcceptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RejectRequestCopyWith<$Res> {
  factory _$$_RejectRequestCopyWith(
          _$_RejectRequest value, $Res Function(_$_RejectRequest) then) =
      __$$_RejectRequestCopyWithImpl<$Res>;
  $Res call({RequestToJoin request});

  $RequestToJoinCopyWith<$Res> get request;
}

/// @nodoc
class __$$_RejectRequestCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements _$$_RejectRequestCopyWith<$Res> {
  __$$_RejectRequestCopyWithImpl(
      _$_RejectRequest _value, $Res Function(_$_RejectRequest) _then)
      : super(_value, (v) => _then(v as _$_RejectRequest));

  @override
  _$_RejectRequest get _value => super._value as _$_RejectRequest;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$_RejectRequest(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestToJoin,
    ));
  }

  @override
  $RequestToJoinCopyWith<$Res> get request {
    return $RequestToJoinCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_RejectRequest implements _RejectRequest {
  const _$_RejectRequest(this.request);

  @override
  final RequestToJoin request;

  @override
  String toString() {
    return 'RequestEvent.rejectRequest(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RejectRequest &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$$_RejectRequestCopyWith<_$_RejectRequest> get copyWith =>
      __$$_RejectRequestCopyWithImpl<_$_RejectRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PublicExpense publicExpense, String userId)
        inviteUserTo,
    required TResult Function(RequestToJoin request) acceptRequest,
    required TResult Function(RequestToJoin request) rejectRequest,
  }) {
    return rejectRequest(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
  }) {
    return rejectRequest?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PublicExpense publicExpense, String userId)? inviteUserTo,
    TResult Function(RequestToJoin request)? acceptRequest,
    TResult Function(RequestToJoin request)? rejectRequest,
    required TResult orElse(),
  }) {
    if (rejectRequest != null) {
      return rejectRequest(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InviteUserTo value) inviteUserTo,
    required TResult Function(_AcceptRequest value) acceptRequest,
    required TResult Function(_RejectRequest value) rejectRequest,
  }) {
    return rejectRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
  }) {
    return rejectRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InviteUserTo value)? inviteUserTo,
    TResult Function(_AcceptRequest value)? acceptRequest,
    TResult Function(_RejectRequest value)? rejectRequest,
    required TResult orElse(),
  }) {
    if (rejectRequest != null) {
      return rejectRequest(this);
    }
    return orElse();
  }
}

abstract class _RejectRequest implements RequestEvent {
  const factory _RejectRequest(final RequestToJoin request) = _$_RejectRequest;

  RequestToJoin get request;
  @JsonKey(ignore: true)
  _$$_RejectRequestCopyWith<_$_RejectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<RequestFailure, RequestOperations>>
      get requstFailureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestStateCopyWith<RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<RequestFailure, RequestOperations>>
          requstFailureOrSuccess});
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res> implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  final RequestState _value;
  // ignore: unused_field
  final $Res Function(RequestState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? requstFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requstFailureOrSuccess: requstFailureOrSuccess == freezed
          ? _value.requstFailureOrSuccess
          : requstFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, RequestOperations>>,
    ));
  }
}

/// @nodoc
abstract class _$$_RequestStateCopyWith<$Res>
    implements $RequestStateCopyWith<$Res> {
  factory _$$_RequestStateCopyWith(
          _$_RequestState value, $Res Function(_$_RequestState) then) =
      __$$_RequestStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<RequestFailure, RequestOperations>>
          requstFailureOrSuccess});
}

/// @nodoc
class __$$_RequestStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res>
    implements _$$_RequestStateCopyWith<$Res> {
  __$$_RequestStateCopyWithImpl(
      _$_RequestState _value, $Res Function(_$_RequestState) _then)
      : super(_value, (v) => _then(v as _$_RequestState));

  @override
  _$_RequestState get _value => super._value as _$_RequestState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? requstFailureOrSuccess = freezed,
  }) {
    return _then(_$_RequestState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requstFailureOrSuccess: requstFailureOrSuccess == freezed
          ? _value.requstFailureOrSuccess
          : requstFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, RequestOperations>>,
    ));
  }
}

/// @nodoc

class _$_RequestState implements _RequestState {
  const _$_RequestState(
      {required this.isLoading, required this.requstFailureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Option<Either<RequestFailure, RequestOperations>>
      requstFailureOrSuccess;

  @override
  String toString() {
    return 'RequestState(isLoading: $isLoading, requstFailureOrSuccess: $requstFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.requstFailureOrSuccess, requstFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(requstFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_RequestStateCopyWith<_$_RequestState> get copyWith =>
      __$$_RequestStateCopyWithImpl<_$_RequestState>(this, _$identity);
}

abstract class _RequestState implements RequestState {
  const factory _RequestState(
      {required final bool isLoading,
      required final Option<Either<RequestFailure, RequestOperations>>
          requstFailureOrSuccess}) = _$_RequestState;

  @override
  bool get isLoading;
  @override
  Option<Either<RequestFailure, RequestOperations>> get requstFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_RequestStateCopyWith<_$_RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
