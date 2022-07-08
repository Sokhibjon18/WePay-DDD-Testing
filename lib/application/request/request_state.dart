part of 'request_bloc.dart';

@freezed
class RequestState with _$RequestState {
  const factory RequestState({
    required bool isLoading,
    required Option<Either<RequestFailure, RequestOperations>> requstFailureOrSuccess,
  }) = _RequestState;

  factory RequestState.initial() => _RequestState(
        isLoading: false,
        requstFailureOrSuccess: none(),
      );
}
