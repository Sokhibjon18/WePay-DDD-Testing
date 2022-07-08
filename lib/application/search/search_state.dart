part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool sendingRequest,
    required Option<Either<SearchFailure, List<Apartment>>> listOrFailure,
  }) = _SearchState;

  factory SearchState.initial() => _SearchState(
        isLoading: false,
        sendingRequest: false,
        listOrFailure: none(),
      );
}
