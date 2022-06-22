part of 'sign_in_checker_bloc.dart';

@freezed
class SignInCheckerEvent with _$SignInCheckerEvent {
  const factory SignInCheckerEvent.authCheckRequest() = _AuthCheckRequest;
  const factory SignInCheckerEvent.signOut() = _SignOut;
}
