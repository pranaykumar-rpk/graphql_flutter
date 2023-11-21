import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class AccountModel with _$AccountModel {
  factory AccountModel({
    String? id,
    String? accountNumber,
    String? accountType,
    double? balance,
    String? accountHolder,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
