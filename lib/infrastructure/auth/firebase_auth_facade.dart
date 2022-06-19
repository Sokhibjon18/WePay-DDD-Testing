import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/auth/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/auth/i_auth_facade.dart';
import 'package:we_pay/domain/auth/value_objects.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleAuth;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._auth, this._googleAuth, this._firestore);

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
      saveOrUpdateUser();
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
      saveOrUpdateUser();
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
      saveOrUpdateUser();
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> saveOrUpdateUser() async {
    try {
      String uid = _auth.currentUser!.uid;
      final user = await _firestore.collection('user').doc(uid).get();
      if (user.exists) {
        UserModel userModel = UserModel.fromJson(user.data()!);
        _firestore.updateUser(userModel);
      } else {
        UserModel userModel = UserModel(uid: uid, serverTimeStamp: FieldValue.serverTimestamp());
        _firestore.setUser(userModel);
      }
    } on FirebaseException catch (e) {
      log(e.message.toString());
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
}
