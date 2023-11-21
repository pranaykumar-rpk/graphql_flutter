// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$HomeStateModelToJson(HomeStateModel instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'isLoading': instance.isLoading,
      'homeData': instance.homeData,
      'transactions': instance.transactions,
      'accounts': instance.accounts,
      'statements': instance.statements,
    };

_$HomeStateModelImpl _$$HomeStateModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateModelImpl(
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      isLoading: json['isLoading'] as bool? ?? false,
      homeData: json['homeData'] == null
          ? null
          : HomeModel.fromJson(json['homeData'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => AccountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      statements: (json['statements'] as List<dynamic>?)
              ?.map((e) => StatementModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeStateModelImplToJson(
        _$HomeStateModelImpl instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'isLoading': instance.isLoading,
      'homeData': instance.homeData,
      'transactions': instance.transactions,
      'accounts': instance.accounts,
      'statements': instance.statements,
    };
