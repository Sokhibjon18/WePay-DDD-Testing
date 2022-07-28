// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      color: json['color'] as int,
      email: json['email'] as String?,
      ownedApartments: (json['ownedApartments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      serverTimeStamp: json['serverTimeStamp'],
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'color': instance.color,
      'email': instance.email,
      'ownedApartments': instance.ownedApartments,
      'serverTimeStamp': instance.serverTimeStamp,
    };
