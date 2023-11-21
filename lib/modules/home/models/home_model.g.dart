// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'balance': instance.balance,
      'currency': instance.currency,
      'address': instance.address,
      'recentTransactions': instance.recentTransactions,
      'upcomingBills': instance.upcomingBills,
    };

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      name: json['name'] as String?,
      accountNumber: json['accountNumber'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      recentTransactions: (json['recentTransactions'] as List<dynamic>?)
              ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      upcomingBills: (json['upcomingBills'] as List<dynamic>?)
              ?.map((e) => BillsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'balance': instance.balance,
      'currency': instance.currency,
      'address': instance.address,
      'recentTransactions': instance.recentTransactions,
      'upcomingBills': instance.upcomingBills,
    };
