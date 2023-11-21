import 'package:graphql_example/modules/home/models/transaction_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_model.freezed.dart';
part 'transactions_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class TransactionsModel with _$TransactionsModel {
  factory TransactionsModel({
    @Default([]) List<TransactionModel> transactions,
  }) = _TransactionsModel;

  factory TransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionsModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TransactionsModelToJson(this);
}
