part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required EmailAddress emailAddress,
    required Name name,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthState.initial() => AuthState(
        emailAddress: EmailAddress(''),
        name: Name(''),
        password: Password(''),
        showErrorMessage: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
