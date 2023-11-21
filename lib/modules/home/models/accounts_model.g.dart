// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AccountsModelToJson(AccountsModel instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
    };

_$AccountsModelImpl _$$AccountsModelImplFromJson(Map<String, dynamic> json) =>
    _$AccountsModelImpl(
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => AccountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AccountsModelImplToJson(_$AccountsModelImpl instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
    };
