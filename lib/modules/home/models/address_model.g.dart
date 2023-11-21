// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'streetName': instance.streetName,
      'buildingNumber': instance.buildingNumber,
      'townName': instance.townName,
      'postCode': instance.postCode,
      'country': instance.country,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      streetName: json['streetName'] as String?,
      buildingNumber: json['buildingNumber'] as String?,
      townName: json['townName'] as String?,
      postCode: json['postCode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'streetName': instance.streetName,
      'buildingNumber': instance.buildingNumber,
      'townName': instance.townName,
      'postCode': instance.postCode,
      'country': instance.country,
    };
