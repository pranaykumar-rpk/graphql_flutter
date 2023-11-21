import 'package:graphql_example/modules/home/models/account_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounts_model.freezed.dart';
part 'accounts_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class AccountsModel with _$AccountsModel {
  factory AccountsModel({
    @Default([]) List<AccountModel> accounts,
  }) = _AccountsModel;

  factory AccountsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountsModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AccountsModelToJson(this);
}
