// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatementModel _$StatementModelFromJson(Map<String, dynamic> json) {
  return _StatementModel.fromJson(json);
}

/// @nodoc
mixin _$StatementModel {
  String? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatementModelCopyWith<StatementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementModelCopyWith<$Res> {
  factory $StatementModelCopyWith(
          StatementModel value, $Res Function(StatementModel) then) =
      _$StatementModelCopyWithImpl<$Res, StatementModel>;
  @useResult
  $Res call({String? date, String? description, double? amount});
}

/// @nodoc
class _$StatementModelCopyWithImpl<$Res, $Val extends StatementModel>
    implements $StatementModelCopyWith<$Res> {
  _$StatementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatementModelImplCopyWith<$Res>
    implements $StatementModelCopyWith<$Res> {
  factory _$$StatementModelImplCopyWith(_$StatementModelImpl value,
          $Res Function(_$StatementModelImpl) then) =
      __$$StatementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? description, double? amount});
}

/// @nodoc
class __$$StatementModelImplCopyWithImpl<$Res>
    extends _$StatementModelCopyWithImpl<$Res, _$StatementModelImpl>
    implements _$$StatementModelImplCopyWith<$Res> {
  __$$StatementModelImplCopyWithImpl(
      _$StatementModelImpl _value, $Res Function(_$StatementModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$StatementModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatementModelImpl implements _StatementModel {
  _$StatementModelImpl({this.date, this.description, this.amount});

  factory _$StatementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatementModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? description;
  @override
  final double? amount;

  @override
  String toString() {
    return 'StatementModel(date: $date, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatementModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, description, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatementModelImplCopyWith<_$StatementModelImpl> get copyWith =>
      __$$StatementModelImplCopyWithImpl<_$StatementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatementModelImplToJson(
      this,
    );
  }
}

abstract class _StatementModel implements StatementModel {
  factory _StatementModel(
      {final String? date,
      final String? description,
      final double? amount}) = _$StatementModelImpl;

  factory _StatementModel.fromJson(Map<String, dynamic> json) =
      _$StatementModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get description;
  @override
  double? get amount;
  @override
  @JsonKey(ignore: true)
  _$$StatementModelImplCopyWith<_$StatementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
