import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/profile.dart';
import 'package:we_pay/domain/profile/profile_failure.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/domain/profile/i_profile_repository.dart';
import 'package:we_pay/infrastructure/core/firestore_x.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  UserModel? user;

  ProfileRepository(this._firestore, this._auth);

  @override
  Future<Either<ProfileFailure, UserModel>> getUser() async {
    try {
      final userId = _auth.currentUser!.uid;
      final userJson = await _firestore.getUser(userId);
      user = UserModel.fromJson(userJson.data()!);
      return user == null ? left(const ProfileFailure.unexpected('User not found')) : right(user!);
    } on FirebaseException catch (e) {
      log(e.stackTrace.toString());
      return left(ProfileFailure.unexpected('${e.message}(${e.code})'));
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateUser(Profile profile) async {
    try {
      if (user == null) {
        return left(const ProfileFailure.unexpected('User can\'t be updated'));
      }
      final newUser = user!.copyWith(
        name: profile.name,
        email: profile.email,
        color: profile.color,
      );
      await _auth.currentUser?.updateEmail(profile.email);
      await _firestore.updateUser(newUser);
      return right(unit);
    } on FirebaseException catch (e) {
      log('${e.code}\n${e.stackTrace}');
      return left(ProfileFailure.unexpected('${e.message}'));
    } catch (e) {
      log(e.toString());
      return left(const ProfileFailure.unexpected('Unexpected error'));
    }
  }
}
