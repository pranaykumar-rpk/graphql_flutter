// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statements_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$StatementsModelToJson(StatementsModel instance) =>
    <String, dynamic>{
      'statements': instance.statements,
    };

_$StatementsModelImpl _$$StatementsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StatementsModelImpl(
      statements: (json['statements'] as List<dynamic>?)
              ?.map((e) => StatementModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StatementsModelImplToJson(
        _$StatementsModelImpl instance) =>
    <String, dynamic>{
      'statements': instance.statements,
    };
