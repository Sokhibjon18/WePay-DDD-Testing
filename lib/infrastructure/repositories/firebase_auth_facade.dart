import 'dart:developer';
import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/auth/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/models/user_model/user_model.dart';
import '../core/firestore_x.dart';
import '../../presentation/constants/colors.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleAuth;
  final FirebaseFirestore _firestore;
  final FirebaseMessaging _messaging;
  final SharedPreferences _sharedPreferences;

  FirebaseAuthFacade(
    this._auth,
    this._googleAuth,
    this._firestore,
    this._sharedPreferences,
    this._messaging,
  );

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
      await saveOrUpdateUserInFirestore(name: name.getRight(), email: email.getRight());
      await updateNotificationToken();
      await saveEmailAndPassword(email.getRight(), password.getRight());
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
      await saveEmailAndPassword(email.getRight(), password.getRight());
      await updateNotificationToken();
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
      await updateNotificationToken();
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
      int id = 0;
      final user = await _firestore.getUser(uid);
      UserModel userModel;
      if (user.exists) {
        userModel = UserModel.fromJson(user.data()!);
        await _firestore.updateUser(userModel);
        id = userModel.id;
      } else {
        final randomPosition = math.Random().nextInt(7);
        final color = userChartColors[randomPosition].value;
        final currentDate = DateTime.now();
        id = (math.Random().nextInt(1000) * 1000000) +
            (currentDate.day * 10000) +
            (currentDate.month * 100) +
            (currentDate.year % 100);
        userModel = UserModel(
          uid: uid,
          id: id,
          name: name!,
          email: email,
          color: color,
          serverTimeStamp: FieldValue.serverTimestamp(),
        );
        await _firestore.setUser(userModel);
      }
      _sharedPreferences.setInt('id', id);
    } on FirebaseException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> updateNotificationToken() async {
    try {
      String userId = _auth.currentUser!.uid;
      String localToken = _sharedPreferences.getString('nToken') ?? '';
      String firebaseToken = await _messaging.getToken() ?? '';
      if (localToken != firebaseToken) {
        await _firestore
            .collection('user')
            .doc(userId)
            .update({'notificationToken': firebaseToken});
        await _sharedPreferences.setString('nToken', firebaseToken);
      }
    } on FirebaseException catch (e) {
      log('${e.code} ${e.stackTrace}');
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      await _googleAuth.signOut();
      await _messaging.deleteToken();
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
