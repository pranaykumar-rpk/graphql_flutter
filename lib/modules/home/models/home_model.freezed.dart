// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  String? get name => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  AddressModel? get address => throw _privateConstructorUsedError;
  List<TransactionModel> get recentTransactions =>
      throw _privateConstructorUsedError;
  List<BillsModel> get upcomingBills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {String? name,
      String? accountNumber,
      double? balance,
      String? currency,
      AddressModel? address,
      List<TransactionModel> recentTransactions,
      List<BillsModel> upcomingBills});

  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accountNumber = freezed,
    Object? balance = freezed,
    Object? currency = freezed,
    Object? address = freezed,
    Object? recentTransactions = null,
    Object? upcomingBills = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      recentTransactions: null == recentTransactions
          ? _value.recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      upcomingBills: null == upcomingBills
          ? _value.upcomingBills
          : upcomingBills // ignore: cast_nullable_to_non_nullable
              as List<BillsModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? accountNumber,
      double? balance,
      String? currency,
      AddressModel? address,
      List<TransactionModel> recentTransactions,
      List<BillsModel> upcomingBills});

  @override
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accountNumber = freezed,
    Object? balance = freezed,
    Object? currency = freezed,
    Object? address = freezed,
    Object? recentTransactions = null,
    Object? upcomingBills = null,
  }) {
    return _then(_$HomeModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      recentTransactions: null == recentTransactions
          ? _value._recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      upcomingBills: null == upcomingBills
          ? _value._upcomingBills
          : upcomingBills // ignore: cast_nullable_to_non_nullable
              as List<BillsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  _$HomeModelImpl(
      {this.name,
      this.accountNumber,
      this.balance,
      this.currency,
      this.address,
      final List<TransactionModel> recentTransactions = const [],
      final List<BillsModel> upcomingBills = const []})
      : _recentTransactions = recentTransactions,
        _upcomingBills = upcomingBills;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? accountNumber;
  @override
  final double? balance;
  @override
  final String? currency;
  @override
  final AddressModel? address;
  final List<TransactionModel> _recentTransactions;
  @override
  @JsonKey()
  List<TransactionModel> get recentTransactions {
    if (_recentTransactions is EqualUnmodifiableListView)
      return _recentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTransactions);
  }

  final List<BillsModel> _upcomingBills;
  @override
  @JsonKey()
  List<BillsModel> get upcomingBills {
    if (_upcomingBills is EqualUnmodifiableListView) return _upcomingBills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingBills);
  }

  @override
  String toString() {
    return 'HomeModel(name: $name, accountNumber: $accountNumber, balance: $balance, currency: $currency, address: $address, recentTransactions: $recentTransactions, upcomingBills: $upcomingBills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._recentTransactions, _recentTransactions) &&
            const DeepCollectionEquality()
                .equals(other._upcomingBills, _upcomingBills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      accountNumber,
      balance,
      currency,
      address,
      const DeepCollectionEquality().hash(_recentTransactions),
      const DeepCollectionEquality().hash(_upcomingBills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  factory _HomeModel(
      {final String? name,
      final String? accountNumber,
      final double? balance,
      final String? currency,
      final AddressModel? address,
      final List<TransactionModel> recentTransactions,
      final List<BillsModel> upcomingBills}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get accountNumber;
  @override
  double? get balance;
  @override
  String? get currency;
  @override
  AddressModel? get address;
  @override
  List<TransactionModel> get recentTransactions;
  @override
  List<BillsModel> get upcomingBills;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
