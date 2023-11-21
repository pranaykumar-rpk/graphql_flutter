// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$StatementModelToJson(StatementModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'description': instance.description,
      'amount': instance.amount,
    };

_$StatementModelImpl _$$StatementModelImplFromJson(Map<String, dynamic> json) =>
    _$StatementModelImpl(
      date: json['date'] as String?,
      description: json['description'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$StatementModelImplToJson(
        _$StatementModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'description': instance.description,
      'amount': instance.amount,
    };
