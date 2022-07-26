import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/models/profile.dart';
import 'package:we_pay/domain/profile/profile_failure.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, UserModel>> getUser();
  Future<Either<ProfileFailure, Unit>> updateUser(Profile profile);
}
