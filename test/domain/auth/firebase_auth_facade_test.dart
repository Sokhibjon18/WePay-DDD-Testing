import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:we_pay/domain/auth/auth_failure.dart';
import 'package:we_pay/domain/auth/value_objects.dart';
import 'package:we_pay/infrastructure/repositories/firebase_auth_facade.dart';
import 'firebase_auth_facade_test.mocks.dart';

class _FakeUser extends Fake implements User {}

class _FakeUserCredential extends Fake implements UserCredential {}

class _FakeGoogleSignInAccount extends Fake implements GoogleSignInAccount {
  @override
  Future<GoogleSignInAuthentication> get authentication =>
      Future.value(_FakeGoogleSignInAuthentication('accessToken', 'idToken'));
}

class _FakeGoogleSignInAuthentication extends Fake implements GoogleSignInAuthentication {
  @override
  final String? accessToken;
  @override
  final String? idToken;

  _FakeGoogleSignInAuthentication(this.accessToken, this.idToken);
}

@GenerateNiceMocks([
  MockSpec<FirebaseAuth>(),
  MockSpec<GoogleSignIn>(),
  MockSpec<FirebaseFirestore>(),
  MockSpec<FirebaseMessaging>(),
  MockSpec<SharedPreferences>(),
])
void main() {
  late FirebaseAuth _auth = MockFirebaseAuth();
  late GoogleSignIn _googleAuth = MockGoogleSignIn();
  late FirebaseFirestore _firestore = MockFirebaseFirestore();
  late FirebaseMessaging _messaging = MockFirebaseMessaging();
  late SharedPreferences _sharedPreferences = MockSharedPreferences();
  late FirebaseAuthFacade repo = FirebaseAuthFacade(
    _auth,
    _googleAuth,
    _firestore,
    _sharedPreferences,
    _messaging,
  );

  group('getSignedUser', () {
    test('should return signed user when it exists', () async {
      var fakeUser = _FakeUser();
      when(_auth.currentUser).thenReturn(fakeUser);
      var userOption = await repo.getSignedUser();

      verify(_auth.currentUser);
      expect(userOption.isSome(), true);
    });

    test('should return null when user does not exists', () async {
      when(_auth.currentUser).thenReturn(null);
      var userOption = await repo.getSignedUser();

      verify(_auth.currentUser);
      expect(userOption.isSome(), false);
    });
  });

  group('registerWithEmailAndPassword', () {
    late Name name;
    late EmailAddress email;
    late Password password;
    late VoidCallback verificationsForExceptions;
    late Future<Either<AuthFailure, Unit>> Function() resgisterWithEmailAndPasswordRequest;

    setUpAll(() async {
      name = Name('hello');
      email = EmailAddress('email@mail.ru');
      password = Password('password');

      resgisterWithEmailAndPasswordRequest = () {
        return repo.registerWithEmailAndPassword(
          name: name,
          email: email,
          password: password,
        );
      };

      verificationsForExceptions = () {
        reset(_firestore);
        reset(_sharedPreferences);
        reset(_messaging);
        verify(_auth.createUserWithEmailAndPassword(
          email: email.getRight(),
          password: password.getRight(),
        ));
        verifyZeroInteractions(_firestore);
        verifyZeroInteractions(_sharedPreferences);
        verifyZeroInteractions(_messaging);
      };
    });

    test('should return unit when user created successfully', () async {
      when(_auth.createUserWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenAnswer((_) async => _FakeUserCredential());

      var registeredUser = await resgisterWithEmailAndPasswordRequest();

      verify(_auth.createUserWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      ));

      verifyInOrder([
        repo.saveOrUpdateUserInFirestore(),
        repo.updateNotificationToken(),
        repo.saveEmailAndPassword(email.getRight(), password.getRight()),
      ]);

      expect(registeredUser, const Right(unit));
    });

    test('should return email already in use failure when email already in use', () async {
      when(_auth.createUserWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenThrow(FirebaseException(plugin: '', code: 'email-already-in-use'));

      var registeredUser = await resgisterWithEmailAndPasswordRequest();

      verificationsForExceptions();

      expect(registeredUser, const Left(AuthFailure.emailAlreadyInUse()));
    });

    test('should return server error failure when exception is not email-already-in-use', () async {
      when(_auth.createUserWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenThrow(FirebaseException(plugin: '', code: 'weak-password'));

      var registeredUser = await resgisterWithEmailAndPasswordRequest();
      verificationsForExceptions();

      expect(registeredUser, const Left(AuthFailure.serverError()));
    });

    test('should return unexpected error when exception is not related to Firebase', () async {
      when(_auth.createUserWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenThrow(Exception());

      var registeredUser = await resgisterWithEmailAndPasswordRequest();

      verificationsForExceptions();

      expect(registeredUser, const Left(AuthFailure.unexpectedError()));
    });
  });

  group('signInWithEmailAndPassword', () {
    late EmailAddress email;
    late Password password;
    late VoidCallback verificationsForExceptions;
    late Future<Either<AuthFailure, Unit>> Function() signInWithEmailAndPasswordRequest;

    setUpAll(() {
      email = EmailAddress('email@gmail.com');
      password = Password('12345678');

      signInWithEmailAndPasswordRequest = () async {
        return await repo.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      };

      verificationsForExceptions = () {
        verify(_auth.signInWithEmailAndPassword(
          email: email.getRight(),
          password: password.getRight(),
        ));
        reset(_firestore);
        reset(_messaging);
        reset(_sharedPreferences);
        verifyNoMoreInteractions(_firestore);
        verifyNoMoreInteractions(_messaging);
        verifyNoMoreInteractions(_sharedPreferences);
      };
    });

    test('should return unit when sign in successfully', () async {
      when(_auth.signInWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenAnswer((_) async => _FakeUserCredential());

      var user = await signInWithEmailAndPasswordRequest();

      verify(_auth.signInWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      ));

      verifyInOrder([
        repo.saveOrUpdateUserInFirestore(),
        repo.saveEmailAndPassword(email.getRight(), password.getRight()),
        repo.updateNotificationToken(),
      ]);

      expect(user, const Right(unit));
    });

    test('should return Firebase Exeption when user has invalid email and password combinations',
        () async {
      when(_auth.signInWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenThrow(FirebaseException(plugin: '', code: 'wrong-password'));

      var user = await signInWithEmailAndPasswordRequest();
      verificationsForExceptions();

      expect(user, const Left(AuthFailure.invalidEmailAndPasswordCombination()));
    });

    test('should return Firebase Exeption when there is unexpected error from net', () async {
      when(_auth.signInWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenThrow(FirebaseException(plugin: '', code: 'invalid-email'));

      var user = await signInWithEmailAndPasswordRequest();

      verificationsForExceptions();

      expect(user, const Left(AuthFailure.serverError()));
    });

    test('should return Exeption when there is problem with application', () async {
      when(_auth.signInWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      )).thenThrow(Exception('application error'));

      var user = await signInWithEmailAndPasswordRequest();

      verificationsForExceptions();

      expect(user, const Left(AuthFailure.unexpectedError()));
    });
  });

  group('signInWithGoogle', () {
    late VoidCallback verificationsForExceptions;
    late Future<Either<AuthFailure, Unit>> Function() signInWithEmailAndPasswordRequest;

    setUpAll(() {
      verificationsForExceptions = () {
        reset(_firestore);
        reset(_messaging);
        reset(_sharedPreferences);
        verifyNoMoreInteractions(_firestore);
        verifyNoMoreInteractions(_messaging);
        verifyNoMoreInteractions(_sharedPreferences);
      };
    });

    test('should return unit when sign in successfully', () async {
      var googleUser = _FakeGoogleSignInAccount();
      final authCredential = GoogleAuthProvider.credential(
        accessToken: 'accessToken',
        idToken: 'idToken',
      );

      when(_googleAuth.signIn()).thenAnswer((_) async => googleUser);
      when(_auth.signInWithCredential(authCredential))
          .thenAnswer((_) async => _FakeUserCredential());

      var result = await repo.signInWithGoogle();

      verifyInOrder([
        _googleAuth.signIn(),
        repo.saveOrUpdateUserInFirestore(),
        repo.saveCredentials('accessToken', 'idToken'),
        repo.updateNotificationToken(),
      ]);

      expect(result, const Right(unit));
    });
  });
}
