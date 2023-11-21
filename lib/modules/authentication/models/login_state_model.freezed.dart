// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginStateModel _$LoginStateModelFromJson(Map<String, dynamic> json) {
  return _LoginStateModel.fromJson(json);
}

/// @nodoc
mixin _$LoginStateModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateModelCopyWith<LoginStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateModelCopyWith<$Res> {
  factory $LoginStateModelCopyWith(
          LoginStateModel value, $Res Function(LoginStateModel) then) =
      _$LoginStateModelCopyWithImpl<$Res, LoginStateModel>;
  @useResult
  $Res call({bool isLoading, bool showPassword});
}

/// @nodoc
class _$LoginStateModelCopyWithImpl<$Res, $Val extends LoginStateModel>
    implements $LoginStateModelCopyWith<$Res> {
  _$LoginStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showPassword = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateModelImplCopyWith<$Res>
    implements $LoginStateModelCopyWith<$Res> {
  factory _$$LoginStateModelImplCopyWith(_$LoginStateModelImpl value,
          $Res Function(_$LoginStateModelImpl) then) =
      __$$LoginStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool showPassword});
}

/// @nodoc
class __$$LoginStateModelImplCopyWithImpl<$Res>
    extends _$LoginStateModelCopyWithImpl<$Res, _$LoginStateModelImpl>
    implements _$$LoginStateModelImplCopyWith<$Res> {
  __$$LoginStateModelImplCopyWithImpl(
      _$LoginStateModelImpl _value, $Res Function(_$LoginStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showPassword = null,
  }) {
    return _then(_$LoginStateModelImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateModelImpl implements _LoginStateModel {
  _$LoginStateModelImpl({this.isLoading = false, this.showPassword = false});

  factory _$LoginStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateModelImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showPassword;

  @override
  String toString() {
    return 'LoginStateModel(isLoading: $isLoading, showPassword: $showPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateModelImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, showPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateModelImplCopyWith<_$LoginStateModelImpl> get copyWith =>
      __$$LoginStateModelImplCopyWithImpl<_$LoginStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateModelImplToJson(
      this,
    );
  }
}

abstract class _LoginStateModel implements LoginStateModel {
  factory _LoginStateModel({final bool isLoading, final bool showPassword}) =
      _$LoginStateModelImpl;

  factory _LoginStateModel.fromJson(Map<String, dynamic> json) =
      _$LoginStateModelImpl.fromJson;

  @override
  bool get isLoading;
  @override
  bool get showPassword;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateModelImplCopyWith<_$LoginStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
