// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) => _$_ProductDto(
      uid: json['uid'] as String,
      name: json['name'] as String,
      buyerId: json['buyerId'] as String,
      buyerName: json['buyerName'] as String,
      publicExpenseId: json['publicExpenseId'] as String,
      price: json['price'] as int,
      count: json['count'] as int,
      color: json['color'] as int,
      date: const DateTimeConverter().fromJson(json['date'] as Object),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'buyerId': instance.buyerId,
      'buyerName': instance.buyerName,
      'publicExpenseId': instance.publicExpenseId,
      'price': instance.price,
      'count': instance.count,
      'color': instance.color,
      'date': const DateTimeConverter().toJson(instance.date),
      'note': instance.note,
    };
