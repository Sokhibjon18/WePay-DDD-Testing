// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as int,
      email: json['email'] as String?,
      notificationToken: json['notificationToken'] as String?,
      ownedApartments:
          (json['ownedApartments'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      serverTimeStamp: const ServerTimestampConverter().fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'email': instance.email,
      'notificationToken': instance.notificationToken,
      'ownedApartments': instance.ownedApartments,
      'serverTimeStamp': const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
