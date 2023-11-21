import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state_model.freezed.dart';
part 'home_state_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class HomeStateModel with _$HomeStateModel {
  factory HomeStateModel({
    @Default(0) int selectedIndex,
    @Default(false) bool isLoading,
  }) = _HomeStateModel;

  factory HomeStateModel.fromJson(Map<String, dynamic> json) =>
      _$HomeStateModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$HomeStateModelToJson(this);
}
