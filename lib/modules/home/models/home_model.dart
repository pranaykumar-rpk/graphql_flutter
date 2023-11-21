import 'package:graphql_example/modules/home/models/address_model.dart';
import 'package:graphql_example/modules/home/models/bills_model.dart';
import 'package:graphql_example/modules/home/models/transaction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    String? name,
    String? accountNumber,
    double? balance,
    String? currency,
    AddressModel? address,
    @Default([]) List<TransactionModel> recentTransactions,
    @Default([]) List<TransactionModel> upcomingBills,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
