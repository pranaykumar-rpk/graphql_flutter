// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountsModel _$AccountsModelFromJson(Map<String, dynamic> json) {
  return _AccountsModel.fromJson(json);
}

/// @nodoc
mixin _$AccountsModel {
  List<AccountModel> get accounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsModelCopyWith<AccountsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsModelCopyWith<$Res> {
  factory $AccountsModelCopyWith(
          AccountsModel value, $Res Function(AccountsModel) then) =
      _$AccountsModelCopyWithImpl<$Res, AccountsModel>;
  @useResult
  $Res call({List<AccountModel> accounts});
}

/// @nodoc
class _$AccountsModelCopyWithImpl<$Res, $Val extends AccountsModel>
    implements $AccountsModelCopyWith<$Res> {
  _$AccountsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountsModelImplCopyWith<$Res>
    implements $AccountsModelCopyWith<$Res> {
  factory _$$AccountsModelImplCopyWith(
          _$AccountsModelImpl value, $Res Function(_$AccountsModelImpl) then) =
      __$$AccountsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AccountModel> accounts});
}

/// @nodoc
class __$$AccountsModelImplCopyWithImpl<$Res>
    extends _$AccountsModelCopyWithImpl<$Res, _$AccountsModelImpl>
    implements _$$AccountsModelImplCopyWith<$Res> {
  __$$AccountsModelImplCopyWithImpl(
      _$AccountsModelImpl _value, $Res Function(_$AccountsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$AccountsModelImpl(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountsModelImpl implements _AccountsModel {
  _$AccountsModelImpl({final List<AccountModel> accounts = const []})
      : _accounts = accounts;

  factory _$AccountsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountsModelImplFromJson(json);

  final List<AccountModel> _accounts;
  @override
  @JsonKey()
  List<AccountModel> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'AccountsModel(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsModelImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsModelImplCopyWith<_$AccountsModelImpl> get copyWith =>
      __$$AccountsModelImplCopyWithImpl<_$AccountsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountsModelImplToJson(
      this,
    );
  }
}

abstract class _AccountsModel implements AccountsModel {
  factory _AccountsModel({final List<AccountModel> accounts}) =
      _$AccountsModelImpl;

  factory _AccountsModel.fromJson(Map<String, dynamic> json) =
      _$AccountsModelImpl.fromJson;

  @override
  List<AccountModel> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$AccountsModelImplCopyWith<_$AccountsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
