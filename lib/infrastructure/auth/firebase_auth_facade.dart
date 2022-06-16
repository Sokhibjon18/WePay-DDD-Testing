import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/auth/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/auth/i_auth_facade.dart';
import 'package:we_pay/domain/auth/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleAuth;

  FirebaseAuthFacade(this._auth, this._googleAuth);

  @override
  Future<Option<User>> getSignedUser() async => optionOf(_auth.currentUser);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return e.code == 'email-already-in-use'
          ? left(const AuthFailure.emailAlreadyInUse())
          : left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return e.code == 'user-not-found' || e.code == 'wrong-password'
          ? left(const AuthFailure.invalidEmailAndPasswordCombination())
          : left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleAuth.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.canceledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      await _auth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
    await _googleAuth.signOut();
  }
}
