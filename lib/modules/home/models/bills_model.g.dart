// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bills_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$BillsModelToJson(BillsModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'description': instance.description,
      'amount': instance.amount,
      'fromAccount': instance.fromAccount,
      'toAccount': instance.toAccount,
    };

_$BillsModelImpl _$$BillsModelImplFromJson(Map<String, dynamic> json) =>
    _$BillsModelImpl(
      date: json['date'] as String?,
      description: json['description'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      fromAccount: json['fromAccount'] as String?,
      toAccount: json['toAccount'] as String?,
    );

Map<String, dynamic> _$$BillsModelImplToJson(_$BillsModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'description': instance.description,
      'amount': instance.amount,
      'fromAccount': instance.fromAccount,
      'toAccount': instance.toAccount,
    };
