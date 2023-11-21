// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statements_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatementsModel _$StatementsModelFromJson(Map<String, dynamic> json) {
  return _StatementsModel.fromJson(json);
}

/// @nodoc
mixin _$StatementsModel {
  List<StatementModel> get statements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatementsModelCopyWith<StatementsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementsModelCopyWith<$Res> {
  factory $StatementsModelCopyWith(
          StatementsModel value, $Res Function(StatementsModel) then) =
      _$StatementsModelCopyWithImpl<$Res, StatementsModel>;
  @useResult
  $Res call({List<StatementModel> statements});
}

/// @nodoc
class _$StatementsModelCopyWithImpl<$Res, $Val extends StatementsModel>
    implements $StatementsModelCopyWith<$Res> {
  _$StatementsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statements = null,
  }) {
    return _then(_value.copyWith(
      statements: null == statements
          ? _value.statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<StatementModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatementsModelImplCopyWith<$Res>
    implements $StatementsModelCopyWith<$Res> {
  factory _$$StatementsModelImplCopyWith(_$StatementsModelImpl value,
          $Res Function(_$StatementsModelImpl) then) =
      __$$StatementsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StatementModel> statements});
}

/// @nodoc
class __$$StatementsModelImplCopyWithImpl<$Res>
    extends _$StatementsModelCopyWithImpl<$Res, _$StatementsModelImpl>
    implements _$$StatementsModelImplCopyWith<$Res> {
  __$$StatementsModelImplCopyWithImpl(
      _$StatementsModelImpl _value, $Res Function(_$StatementsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statements = null,
  }) {
    return _then(_$StatementsModelImpl(
      statements: null == statements
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<StatementModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatementsModelImpl implements _StatementsModel {
  _$StatementsModelImpl({final List<StatementModel> statements = const []})
      : _statements = statements;

  factory _$StatementsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatementsModelImplFromJson(json);

  final List<StatementModel> _statements;
  @override
  @JsonKey()
  List<StatementModel> get statements {
    if (_statements is EqualUnmodifiableListView) return _statements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  @override
  String toString() {
    return 'StatementsModel(statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatementsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_statements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatementsModelImplCopyWith<_$StatementsModelImpl> get copyWith =>
      __$$StatementsModelImplCopyWithImpl<_$StatementsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatementsModelImplToJson(
      this,
    );
  }
}

abstract class _StatementsModel implements StatementsModel {
  factory _StatementsModel({final List<StatementModel> statements}) =
      _$StatementsModelImpl;

  factory _StatementsModel.fromJson(Map<String, dynamic> json) =
      _$StatementsModelImpl.fromJson;

  @override
  List<StatementModel> get statements;
  @override
  @JsonKey(ignore: true)
  _$$StatementsModelImplCopyWith<_$StatementsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
