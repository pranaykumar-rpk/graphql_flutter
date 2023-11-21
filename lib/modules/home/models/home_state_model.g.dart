// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$HomeStateModelToJson(HomeStateModel instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'isLoading': instance.isLoading,
    };

_$HomeStateModelImpl _$$HomeStateModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateModelImpl(
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeStateModelImplToJson(
        _$HomeStateModelImpl instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'isLoading': instance.isLoading,
    };
