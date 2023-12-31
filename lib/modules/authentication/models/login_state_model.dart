import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state_model.freezed.dart';
part 'login_state_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class LoginStateModel with _$LoginStateModel {
  factory LoginStateModel({
    @Default(false) bool isLoading,
    @Default(false) bool showPassword,
  }) = _LoginStateModel;

  factory LoginStateModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStateModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LoginStateModelToJson(this);
}
