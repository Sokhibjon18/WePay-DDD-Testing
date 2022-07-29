import 'dart:developer';
import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:we_pay/domain/auth/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/auth/i_auth_facade.dart';
import 'package:we_pay/domain/auth/value_objects.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';
import 'package:we_pay/presentation/constants/colors.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleAuth;
  final FirebaseFirestore _firestore;
  final SharedPreferences _sharedPreferences;

  FirebaseAuthFacade(this._auth, this._googleAuth, this._firestore, this._sharedPreferences);

  @override
  Future<Option<User>> getSignedUser() async => optionOf(_auth.currentUser);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Name name,
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email.getRight(),
        password: password.getRight(),
      );
      saveOrUpdateUserInFirestore(name: name.getRight(), email: email.getRight());
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
      await saveOrUpdateUserInFirestore();
      saveEmailAndPassword(email.getRight(), password.getRight());
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
      await saveOrUpdateUserInFirestore();
      await saveCredentials(googleAuthentication.accessToken!, googleAuthentication.idToken!);
      return right(unit);
    } on FirebaseException catch (e) {
      log(e.code);
      return left(const AuthFailure.serverError());
    } catch (e) {
      log(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> saveOrUpdateUserInFirestore({String? name, String? email}) async {
    try {
      String uid = _auth.currentUser!.uid;
      final user = await _firestore.getUser(uid);
      UserModel userModel;
      if (user.exists) {
        userModel = UserModel.fromJson(user.data()!);
        await _firestore.updateUser(userModel);
      } else {
        final randomPosition = math.Random().nextInt(6) + 1;
        final color = userColors[randomPosition].value;
        userModel = UserModel(
          uid: uid,
          name: name!,
          email: email,
          color: color,
          serverTimeStamp: FieldValue.serverTimestamp(),
        );
        await _firestore.setUser(userModel);
      }
    } on FirebaseException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      await _googleAuth.signOut();
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> saveEmailAndPassword(String email, String password) async {
    await _sharedPreferences.setString('email', email);
    await _sharedPreferences.setString('password', password);
  }

  Future<void> saveCredentials(String accessToken, String idToken) async {
    await _sharedPreferences.setBool('withGoogle', true);
    await _sharedPreferences.setString('accessToken', accessToken);
    await _sharedPreferences.setString('idToken', idToken);
  }
}
