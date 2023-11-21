// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoginStateModelToJson(LoginStateModel instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'showPassword': instance.showPassword,
    };

_$LoginStateModelImpl _$$LoginStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginStateModelImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      showPassword: json['showPassword'] as bool? ?? false,
    );

Map<String, dynamic> _$$LoginStateModelImplToJson(
        _$LoginStateModelImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'showPassword': instance.showPassword,
    };
