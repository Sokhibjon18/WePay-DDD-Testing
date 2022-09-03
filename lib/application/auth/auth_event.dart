part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String email) = EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = PasswordChanged;
  const factory AuthEvent.nameChanged(String name) = NameChanged;
  const factory AuthEvent.registerWithEmailAndPassword() = ResigisterWithEmailAndPassword;
  const factory AuthEvent.signInWithEmailAndPassword() = SignInWithEmailAndPassword;
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;
  const factory AuthEvent.refresh() = Refresh;
  // const factory AuthEvent.signInWithFacebook() = _SignInWithFacebook;
}
