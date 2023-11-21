import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'statement_model.freezed.dart';
part 'statement_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class StatementModel with _$StatementModel {
  factory StatementModel({
    String? date,
    String? description,
    double? amount,
  }) = _StatementModel;

  factory StatementModel.fromJson(Map<String, dynamic> json) =>
      _$StatementModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$StatementModelToJson(this);
}
