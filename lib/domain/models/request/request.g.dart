// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestToJoin _$$_RequestToJoinFromJson(Map<String, dynamic> json) =>
    _$_RequestToJoin(
      userId: json['userId'] as String,
      uid: json['uid'] as String,
      email: json['email'] as String,
      publicExpenseId: json['publicExpenseId'] as String,
      publicExpenseName: json['publicExpenseName'] as String,
    );

Map<String, dynamic> _$$_RequestToJoinToJson(_$_RequestToJoin instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'uid': instance.uid,
      'email': instance.email,
      'publicExpenseId': instance.publicExpenseId,
      'publicExpenseName': instance.publicExpenseName,
    };
