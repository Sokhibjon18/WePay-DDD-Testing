part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required EmailAddress email,
    required Name name,
    required int color,
    required bool showErrorMessage,
    required bool isLoading,
    required Option<Either<ProfileFailure, Unit>> failureOrSuccessOption,
    required Option<Either<ProfileFailure, UserModel>> user,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        email: EmailAddress(''),
        name: Name(''),
        color: userColors.first.value,
        showErrorMessage: false,
        isLoading: false,
        failureOrSuccessOption: none(),
        user: none(),
      );
}
