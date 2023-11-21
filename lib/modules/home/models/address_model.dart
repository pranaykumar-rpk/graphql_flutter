import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    String? streetName,
    String? buildingNumber,
    String? townName,
    String? postCode,
    String? country,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
