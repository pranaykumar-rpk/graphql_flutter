// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bills_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillsModel _$BillsModelFromJson(Map<String, dynamic> json) {
  return _BillsModel.fromJson(json);
}

/// @nodoc
mixin _$BillsModel {
  String? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get fromAccount => throw _privateConstructorUsedError;
  String? get toAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillsModelCopyWith<BillsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillsModelCopyWith<$Res> {
  factory $BillsModelCopyWith(
          BillsModel value, $Res Function(BillsModel) then) =
      _$BillsModelCopyWithImpl<$Res, BillsModel>;
  @useResult
  $Res call(
      {String? date,
      String? description,
      double? amount,
      String? fromAccount,
      String? toAccount});
}

/// @nodoc
class _$BillsModelCopyWithImpl<$Res, $Val extends BillsModel>
    implements $BillsModelCopyWith<$Res> {
  _$BillsModelCopyWithImpl(this._value, this._then);

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
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
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
      fromAccount: freezed == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillsModelImplCopyWith<$Res>
    implements $BillsModelCopyWith<$Res> {
  factory _$$BillsModelImplCopyWith(
          _$BillsModelImpl value, $Res Function(_$BillsModelImpl) then) =
      __$$BillsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? description,
      double? amount,
      String? fromAccount,
      String? toAccount});
}

/// @nodoc
class __$$BillsModelImplCopyWithImpl<$Res>
    extends _$BillsModelCopyWithImpl<$Res, _$BillsModelImpl>
    implements _$$BillsModelImplCopyWith<$Res> {
  __$$BillsModelImplCopyWithImpl(
      _$BillsModelImpl _value, $Res Function(_$BillsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
  }) {
    return _then(_$BillsModelImpl(
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
      fromAccount: freezed == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillsModelImpl implements _BillsModel {
  _$BillsModelImpl(
      {this.date,
      this.description,
      this.amount,
      this.fromAccount,
      this.toAccount});

  factory _$BillsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillsModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? description;
  @override
  final double? amount;
  @override
  final String? fromAccount;
  @override
  final String? toAccount;

  @override
  String toString() {
    return 'BillsModel(date: $date, description: $description, amount: $amount, fromAccount: $fromAccount, toAccount: $toAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillsModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, description, amount, fromAccount, toAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillsModelImplCopyWith<_$BillsModelImpl> get copyWith =>
      __$$BillsModelImplCopyWithImpl<_$BillsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillsModelImplToJson(
      this,
    );
  }
}

abstract class _BillsModel implements BillsModel {
  factory _BillsModel(
      {final String? date,
      final String? description,
      final double? amount,
      final String? fromAccount,
      final String? toAccount}) = _$BillsModelImpl;

  factory _BillsModel.fromJson(Map<String, dynamic> json) =
      _$BillsModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get description;
  @override
  double? get amount;
  @override
  String? get fromAccount;
  @override
  String? get toAccount;
  @override
  @JsonKey(ignore: true)
  _$$BillsModelImplCopyWith<_$BillsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
