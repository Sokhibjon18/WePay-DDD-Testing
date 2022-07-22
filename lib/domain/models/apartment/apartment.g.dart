// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'apartment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Apartment _$$_ApartmentFromJson(Map<String, dynamic> json) => _$_Apartment(
      uid: json['uid'] as String?,
      ownerId: json['ownerId'] as String?,
      region: json['region'] as String,
      district: json['district'] as String,
      street: json['street'] as String,
      houseNumber: json['houseNumber'] as String,
      currentMonthExpences: json['currentMonthExpences'] as String?,
      roommates: json['roommates'] as String?,
      flatNumber: json['flatNumber'] as String? ?? '',
      users: (json['users'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
    );

Map<String, dynamic> _$$_ApartmentToJson(_$_Apartment instance) => <String, dynamic>{
      'uid': instance.uid,
      'ownerId': instance.ownerId,
      'region': instance.region,
      'district': instance.district,
      'street': instance.street,
      'houseNumber': instance.houseNumber,
      'currentMonthExpences': instance.currentMonthExpences,
      'roommates': instance.roommates,
      'flatNumber': instance.flatNumber,
      'users': instance.users,
    };
