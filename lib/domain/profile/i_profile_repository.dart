import 'package:dartz/dartz.dart';
import '../models/profile.dart';
import 'profile_failure.dart';
import '../models/user_model/user_model.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, UserModel>> getUser();
  Future<Either<ProfileFailure, Unit>> updateUser(Profile profile);
}
