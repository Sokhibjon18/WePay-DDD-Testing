import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel implements _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String uid,
    required int id,
    required String name,
    required int color,
    String? email,
    String? notificationToken,
    @Default([]) List<String> ownedApartments,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
