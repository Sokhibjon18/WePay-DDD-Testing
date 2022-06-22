import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/auth/i_auth_facade.dart';
import 'package:we_pay/domain/auth/value_objects.dart';
import 'package:we_pay/domain/auth/auth_failure.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
        emailAddress: EmailAddress(event.email),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: Password(event.password),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<RepeatedPasswordChanged>((event, emit) {
      emit(state.copyWith(
        repeatedPassword: Password.secondPassword(state.password, event.repeatedPassword),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<NameChanged>((event, emit) {
      emit(state.copyWith(
        name: Name(event.name),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<ResigisterWithEmailAndPassword>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSuccess;

      final emailIsValid = state.emailAddress.isValid();
      final passwordIsValid = state.password.isValid();
      final repeatedPaswordIsValid = state.repeatedPassword.isValid();
      final nameIsValid = state.name.isValid();

      if (emailIsValid && passwordIsValid && repeatedPaswordIsValid && nameIsValid) {
        emit(state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none()));

        failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          name: state.name,
          email: state.emailAddress,
          password: state.password,
        );

        emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        ));
      }

      emit(state.copyWith(
        showErrorMessage: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
    on<SignInWithEmailAndPassword>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSuccess;

      final emailIsValid = state.emailAddress.isValid();
      final passwordIsValid = state.password.isValid();

      if (emailIsValid && passwordIsValid) {
        emit(state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none()));

        failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          email: state.emailAddress,
          password: state.password,
        );

        emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        ));
      }

      emit(state.copyWith(
        showErrorMessage: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
    on<SignInWithGoogle>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      final failureOrSuccess = await _authFacade.signInWithGoogle();

      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });
    on<Refresh>((event, emit) {
      emit(state.copyWith(
        emailAddress: EmailAddress(''),
        password: Password(''),
        repeatedPassword: Password(''),
        showErrorMessage: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      ));
    });
  }
}
