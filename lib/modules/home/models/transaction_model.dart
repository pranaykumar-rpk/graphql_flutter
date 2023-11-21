import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class TransactionModel with _$TransactionModel {
  factory TransactionModel(
      {String? date,
      String? description,
      double? amount,
      String? fromAccount,
      String? toAccount}) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
