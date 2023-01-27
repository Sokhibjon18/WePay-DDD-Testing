import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:we_pay/domain/auth/auth_failure.dart';
import 'package:we_pay/domain/auth/i_auth_facade.dart';
import 'package:we_pay/domain/auth/value_objects.dart';
import 'package:we_pay/infrastructure/repositories/firebase_auth_facade.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FirebaseAuthFacade>()])
void main() {
  late IAuthFacade _repo;
  late AuthBloc authBloc;

  setUp(() {
    _repo = MockIAuthFacade();
    authBloc = AuthBloc(_repo);
  });

  group('EmailChanged', () {
    var wrongEmailAddress = 'email';
    var correctEmailAddress = 'email@mail.com';

    blocTest(
      'changes EmailAddress value with ValueFailure when email address is wrong',
      build: () => authBloc..add((EmailChanged(wrongEmailAddress))),
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          emailAddress: EmailAddress(wrongEmailAddress),
          authFailureOrSuccessOption: none(),
        )
      ],
    );

    blocTest(
      'changes EmailAddress value to String when email address is correct',
      build: () => authBloc..add((EmailChanged(correctEmailAddress))),
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          emailAddress: EmailAddress(correctEmailAddress),
          authFailureOrSuccessOption: none(),
        )
      ],
    );
  });

  group('PasswordChanged', () {
    var wrongPassword = '123';
    var correctPassword = '123123';

    blocTest(
      'changes Password value with ValueFailure when password is short',
      build: () => authBloc..add((PasswordChanged(wrongPassword))),
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          password: Password(wrongPassword),
          authFailureOrSuccessOption: none(),
        )
      ],
    );

    blocTest(
      'changes Password value to integer when password length is more then 5',
      build: () => authBloc..add((PasswordChanged(correctPassword))),
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          password: Password(correctPassword),
          authFailureOrSuccessOption: none(),
        )
      ],
    );
  });

  group('NameChanged', () {
    var wrongName = 'Bo';
    var correctName = 'Bob';

    blocTest(
      'changes Name value with ValueFailure when name is short',
      build: () => authBloc..add((NameChanged(wrongName))),
      expect: () => [
        authBloc.state.copyWith(
          name: Name(wrongName),
          authFailureOrSuccessOption: none(),
        )
      ],
    );

    blocTest(
      'changes Name value when name length is more then 2',
      build: () => authBloc..add((NameChanged(correctName))),
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          name: Name(correctName),
          authFailureOrSuccessOption: none(),
        )
      ],
    );
  });

  group('RegisterWIthEmailAndPassword', () {
    Left<AuthFailure, Unit> authFailure = const Left(AuthFailure.serverError());
    var name = Name('name');
    var email = EmailAddress('email@mail.com');
    var password = Password('123123');

    blocTest(
      'changes showErrorMessage to true when one of Email,Password and Name fields are not valid and submitted',
      build: () => authBloc,
      act: (AuthBloc bloc) {
        bloc.add(const RegisterWithEmailAndPassword());
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          showErrorMessage: true,
          authFailureOrSuccessOption: none(),
        )
      ],
    );

    blocTest(
      'changes result to network error when all fields are correct and submitted',
      build: () => authBloc,
      setUp: () {
        authBloc.emit(authBloc.state.copyWith(
          name: name,
          emailAddress: email,
          password: password,
        ));

        when(_repo.registerWithEmailAndPassword(
          name: name,
          email: email,
          password: password,
        )).thenAnswer((_) async => authFailure);
      },
      act: (AuthBloc bloc) {
        bloc.add(const RegisterWithEmailAndPassword());
      },
      verify: (AuthBloc bloc) {
        verify(_repo.registerWithEmailAndPassword(name: name, email: email, password: password));
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          showErrorMessage: false,
        ),
        authBloc.state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(authFailure),
          showErrorMessage: true,
        ),
      ],
    );

    blocTest(
      'changes result to success when all fields are correct and submitted',
      build: () => authBloc,
      setUp: () {
        authBloc.emit(authBloc.state.copyWith(
          name: name,
          emailAddress: email,
          password: password,
        ));

        when(_repo.registerWithEmailAndPassword(
          name: name,
          email: email,
          password: password,
        )).thenAnswer((_) async => const Right(unit));
      },
      act: (AuthBloc bloc) {
        bloc.add(const RegisterWithEmailAndPassword());
      },
      verify: (AuthBloc bloc) {
        verify(_repo.registerWithEmailAndPassword(name: name, email: email, password: password));
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          showErrorMessage: false,
        ),
        authBloc.state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(const Right(unit)),
          showErrorMessage: true,
        ),
      ],
    );
  });

  group('SignInWithEmailAndPassword', () {
    Left<AuthFailure, Unit> authFailure = const Left(AuthFailure.serverError());
    var email = EmailAddress('email@mail.com');
    var password = Password('123123');

    blocTest(
      'changes showErrorMessage to true when one of Email,Password and Name fields are not valid and submitted',
      build: () => authBloc,
      act: (AuthBloc bloc) {
        bloc.add(const SignInWithEmailAndPassword());
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          showErrorMessage: true,
          authFailureOrSuccessOption: none(),
        )
      ],
    );

    blocTest(
      'changes result to network error when all fields are correct and submitted',
      build: () => authBloc,
      setUp: () {
        authBloc.emit(authBloc.state.copyWith(
          emailAddress: email,
          password: password,
        ));

        when(_repo.signInWithEmailAndPassword(
          email: email,
          password: password,
        )).thenAnswer((_) async => authFailure);
      },
      act: (AuthBloc bloc) {
        bloc.add(const SignInWithEmailAndPassword());
      },
      verify: (AuthBloc bloc) {
        verify(_repo.signInWithEmailAndPassword(email: email, password: password));
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          showErrorMessage: false,
        ),
        authBloc.state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(authFailure),
          showErrorMessage: true,
        ),
      ],
    );

    blocTest(
      'changes result to success when all fields are correct and submitted',
      build: () => authBloc,
      setUp: () {
        authBloc.emit(authBloc.state.copyWith(
          emailAddress: email,
          password: password,
        ));

        when(_repo.signInWithEmailAndPassword(
          email: email,
          password: password,
        )).thenAnswer((_) async => const Right(unit));
      },
      act: (AuthBloc bloc) {
        bloc.add(const SignInWithEmailAndPassword());
      },
      verify: (AuthBloc bloc) {
        verify(_repo.signInWithEmailAndPassword(email: email, password: password));
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          showErrorMessage: false,
        ),
        authBloc.state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(const Right(unit)),
          showErrorMessage: true,
        ),
      ],
    );
  });

  group('SignInWithWithGoogle', () {
    const Left<AuthFailure, Unit> authFailure = Left(AuthFailure.canceledByUser());
    const Right<AuthFailure, Unit> success = Right(unit);

    blocTest(
      'changes result to network error when all fields are correct and submitted',
      build: () => authBloc,
      setUp: () {
        when(_repo.signInWithGoogle()).thenAnswer((_) async => authFailure);
      },
      act: (AuthBloc bloc) {
        bloc.add(const SignInWithGoogle());
      },
      verify: (AuthBloc bloc) {
        verify(_repo.signInWithGoogle());
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          showErrorMessage: false,
        ),
        authBloc.state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(authFailure),
        ),
      ],
    );

    blocTest(
      'changes result to success when user signed in with goole',
      build: () => authBloc,
      setUp: () {
        when(_repo.signInWithGoogle()).thenAnswer((_) async => success);
      },
      act: (AuthBloc bloc) {
        bloc.add(const SignInWithGoogle());
      },
      verify: (AuthBloc bloc) {
        verify(_repo.signInWithGoogle());
      },
      expect: () => <AuthState>[
        authBloc.state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          showErrorMessage: false,
        ),
        authBloc.state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(success),
        ),
      ],
    );
  });
}
