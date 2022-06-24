part of 'sign_in_checker_bloc.dart';

@freezed
class SignInCheckerState with _$SignInCheckerState {
  const factory SignInCheckerState.initial() = _Initial;
  const factory SignInCheckerState.authenticated() = _Authenticated;
  const factory SignInCheckerState.unauthenticated() = _Unauthenticated;
}
