part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool firstTime,
    required bool sendingRequest,
    required Either<SearchFailure, UserModel>? userOrFailure,
  }) = _SearchState;

  factory SearchState.initial() => const _SearchState(
        isLoading: false,
        firstTime: true,
        sendingRequest: false,
        userOrFailure: null,
      );
}
