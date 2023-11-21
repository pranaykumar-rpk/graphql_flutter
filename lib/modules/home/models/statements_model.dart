import 'package:graphql_example/modules/home/models/statement_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'statements_model.freezed.dart';
part 'statements_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class StatementsModel with _$StatementsModel {
  factory StatementsModel({
    @Default([]) List<StatementModel> statements,
  }) = _StatementsModel;

  factory StatementsModel.fromJson(Map<String, dynamic> json) =>
      _$StatementsModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$StatementsModelToJson(this);
}
