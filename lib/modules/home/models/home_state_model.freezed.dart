// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeStateModel _$HomeStateModelFromJson(Map<String, dynamic> json) {
  return _HomeStateModel.fromJson(json);
}

/// @nodoc
mixin _$HomeStateModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  HomeModel? get homeData => throw _privateConstructorUsedError;
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  List<AccountModel> get accounts => throw _privateConstructorUsedError;
  List<StatementModel> get statements => throw _privateConstructorUsedError;
  List<dynamic> get contacts => throw _privateConstructorUsedError;
  bool get isLoadingHomeData => throw _privateConstructorUsedError;
  bool get isLoadingAccountsData => throw _privateConstructorUsedError;
  bool get isLoadingTransactionsData => throw _privateConstructorUsedError;
  bool get isLoadingStatementsData => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isContactsFetchedSuccessfully => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateModelCopyWith<HomeStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateModelCopyWith<$Res> {
  factory $HomeStateModelCopyWith(
          HomeStateModel value, $Res Function(HomeStateModel) then) =
      _$HomeStateModelCopyWithImpl<$Res, HomeStateModel>;
  @useResult
  $Res call(
      {int selectedIndex,
      bool isLoading,
      HomeModel? homeData,
      List<TransactionModel> transactions,
      List<AccountModel> accounts,
      List<StatementModel> statements,
      List<dynamic> contacts,
      bool isLoadingHomeData,
      bool isLoadingAccountsData,
      bool isLoadingTransactionsData,
      bool isLoadingStatementsData,
      String? message,
      bool isContactsFetchedSuccessfully});

  $HomeModelCopyWith<$Res>? get homeData;
}

/// @nodoc
class _$HomeStateModelCopyWithImpl<$Res, $Val extends HomeStateModel>
    implements $HomeStateModelCopyWith<$Res> {
  _$HomeStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? isLoading = null,
    Object? homeData = freezed,
    Object? transactions = null,
    Object? accounts = null,
    Object? statements = null,
    Object? contacts = null,
    Object? isLoadingHomeData = null,
    Object? isLoadingAccountsData = null,
    Object? isLoadingTransactionsData = null,
    Object? isLoadingStatementsData = null,
    Object? message = freezed,
    Object? isContactsFetchedSuccessfully = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      statements: null == statements
          ? _value.statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<StatementModel>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoadingHomeData: null == isLoadingHomeData
          ? _value.isLoadingHomeData
          : isLoadingHomeData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAccountsData: null == isLoadingAccountsData
          ? _value.isLoadingAccountsData
          : isLoadingAccountsData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTransactionsData: null == isLoadingTransactionsData
          ? _value.isLoadingTransactionsData
          : isLoadingTransactionsData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingStatementsData: null == isLoadingStatementsData
          ? _value.isLoadingStatementsData
          : isLoadingStatementsData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isContactsFetchedSuccessfully: null == isContactsFetchedSuccessfully
          ? _value.isContactsFetchedSuccessfully
          : isContactsFetchedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelCopyWith<$Res>? get homeData {
    if (_value.homeData == null) {
      return null;
    }

    return $HomeModelCopyWith<$Res>(_value.homeData!, (value) {
      return _then(_value.copyWith(homeData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateModelImplCopyWith<$Res>
    implements $HomeStateModelCopyWith<$Res> {
  factory _$$HomeStateModelImplCopyWith(_$HomeStateModelImpl value,
          $Res Function(_$HomeStateModelImpl) then) =
      __$$HomeStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedIndex,
      bool isLoading,
      HomeModel? homeData,
      List<TransactionModel> transactions,
      List<AccountModel> accounts,
      List<StatementModel> statements,
      List<dynamic> contacts,
      bool isLoadingHomeData,
      bool isLoadingAccountsData,
      bool isLoadingTransactionsData,
      bool isLoadingStatementsData,
      String? message,
      bool isContactsFetchedSuccessfully});

  @override
  $HomeModelCopyWith<$Res>? get homeData;
}

/// @nodoc
class __$$HomeStateModelImplCopyWithImpl<$Res>
    extends _$HomeStateModelCopyWithImpl<$Res, _$HomeStateModelImpl>
    implements _$$HomeStateModelImplCopyWith<$Res> {
  __$$HomeStateModelImplCopyWithImpl(
      _$HomeStateModelImpl _value, $Res Function(_$HomeStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? isLoading = null,
    Object? homeData = freezed,
    Object? transactions = null,
    Object? accounts = null,
    Object? statements = null,
    Object? contacts = null,
    Object? isLoadingHomeData = null,
    Object? isLoadingAccountsData = null,
    Object? isLoadingTransactionsData = null,
    Object? isLoadingStatementsData = null,
    Object? message = freezed,
    Object? isContactsFetchedSuccessfully = null,
  }) {
    return _then(_$HomeStateModelImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      statements: null == statements
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<StatementModel>,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoadingHomeData: null == isLoadingHomeData
          ? _value.isLoadingHomeData
          : isLoadingHomeData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAccountsData: null == isLoadingAccountsData
          ? _value.isLoadingAccountsData
          : isLoadingAccountsData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTransactionsData: null == isLoadingTransactionsData
          ? _value.isLoadingTransactionsData
          : isLoadingTransactionsData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingStatementsData: null == isLoadingStatementsData
          ? _value.isLoadingStatementsData
          : isLoadingStatementsData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isContactsFetchedSuccessfully: null == isContactsFetchedSuccessfully
          ? _value.isContactsFetchedSuccessfully
          : isContactsFetchedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateModelImpl implements _HomeStateModel {
  _$HomeStateModelImpl(
      {this.selectedIndex = 0,
      this.isLoading = false,
      this.homeData,
      final List<TransactionModel> transactions = const [],
      final List<AccountModel> accounts = const [],
      final List<StatementModel> statements = const [],
      final List<dynamic> contacts = const [],
      this.isLoadingHomeData = false,
      this.isLoadingAccountsData = false,
      this.isLoadingTransactionsData = false,
      this.isLoadingStatementsData = false,
      this.message,
      this.isContactsFetchedSuccessfully = false})
      : _transactions = transactions,
        _accounts = accounts,
        _statements = statements,
        _contacts = contacts;

  factory _$HomeStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateModelImplFromJson(json);

  @override
  @JsonKey()
  final int selectedIndex;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final HomeModel? homeData;
  final List<TransactionModel> _transactions;
  @override
  @JsonKey()
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<AccountModel> _accounts;
  @override
  @JsonKey()
  List<AccountModel> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final List<StatementModel> _statements;
  @override
  @JsonKey()
  List<StatementModel> get statements {
    if (_statements is EqualUnmodifiableListView) return _statements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  final List<dynamic> _contacts;
  @override
  @JsonKey()
  List<dynamic> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  @JsonKey()
  final bool isLoadingHomeData;
  @override
  @JsonKey()
  final bool isLoadingAccountsData;
  @override
  @JsonKey()
  final bool isLoadingTransactionsData;
  @override
  @JsonKey()
  final bool isLoadingStatementsData;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool isContactsFetchedSuccessfully;

  @override
  String toString() {
    return 'HomeStateModel(selectedIndex: $selectedIndex, isLoading: $isLoading, homeData: $homeData, transactions: $transactions, accounts: $accounts, statements: $statements, contacts: $contacts, isLoadingHomeData: $isLoadingHomeData, isLoadingAccountsData: $isLoadingAccountsData, isLoadingTransactionsData: $isLoadingTransactionsData, isLoadingStatementsData: $isLoadingStatementsData, message: $message, isContactsFetchedSuccessfully: $isContactsFetchedSuccessfully)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateModelImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.isLoadingHomeData, isLoadingHomeData) ||
                other.isLoadingHomeData == isLoadingHomeData) &&
            (identical(other.isLoadingAccountsData, isLoadingAccountsData) ||
                other.isLoadingAccountsData == isLoadingAccountsData) &&
            (identical(other.isLoadingTransactionsData,
                    isLoadingTransactionsData) ||
                other.isLoadingTransactionsData == isLoadingTransactionsData) &&
            (identical(
                    other.isLoadingStatementsData, isLoadingStatementsData) ||
                other.isLoadingStatementsData == isLoadingStatementsData) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isContactsFetchedSuccessfully,
                    isContactsFetchedSuccessfully) ||
                other.isContactsFetchedSuccessfully ==
                    isContactsFetchedSuccessfully));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedIndex,
      isLoading,
      homeData,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_statements),
      const DeepCollectionEquality().hash(_contacts),
      isLoadingHomeData,
      isLoadingAccountsData,
      isLoadingTransactionsData,
      isLoadingStatementsData,
      message,
      isContactsFetchedSuccessfully);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateModelImplCopyWith<_$HomeStateModelImpl> get copyWith =>
      __$$HomeStateModelImplCopyWithImpl<_$HomeStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateModelImplToJson(
      this,
    );
  }
}

abstract class _HomeStateModel implements HomeStateModel {
  factory _HomeStateModel(
      {final int selectedIndex,
      final bool isLoading,
      final HomeModel? homeData,
      final List<TransactionModel> transactions,
      final List<AccountModel> accounts,
      final List<StatementModel> statements,
      final List<dynamic> contacts,
      final bool isLoadingHomeData,
      final bool isLoadingAccountsData,
      final bool isLoadingTransactionsData,
      final bool isLoadingStatementsData,
      final String? message,
      final bool isContactsFetchedSuccessfully}) = _$HomeStateModelImpl;

  factory _HomeStateModel.fromJson(Map<String, dynamic> json) =
      _$HomeStateModelImpl.fromJson;

  @override
  int get selectedIndex;
  @override
  bool get isLoading;
  @override
  HomeModel? get homeData;
  @override
  List<TransactionModel> get transactions;
  @override
  List<AccountModel> get accounts;
  @override
  List<StatementModel> get statements;
  @override
  List<dynamic> get contacts;
  @override
  bool get isLoadingHomeData;
  @override
  bool get isLoadingAccountsData;
  @override
  bool get isLoadingTransactionsData;
  @override
  bool get isLoadingStatementsData;
  @override
  String? get message;
  @override
  bool get isContactsFetchedSuccessfully;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateModelImplCopyWith<_$HomeStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
