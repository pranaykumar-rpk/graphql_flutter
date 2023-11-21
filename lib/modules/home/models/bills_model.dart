import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bills_model.freezed.dart';
part 'bills_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class BillsModel with _$BillsModel {
  factory BillsModel(
      {String? date,
      String? description,
      double? amount,
      String? fromAccount,
      String? toAccount}) = _BillsModel;

  factory BillsModel.fromJson(Map<String, dynamic> json) =>
      _$BillsModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$BillsModelToJson(this);
}
