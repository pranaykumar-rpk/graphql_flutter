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
  $Res call({int selectedIndex, bool isLoading});
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
    ) as $Val);
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
  $Res call({int selectedIndex, bool isLoading});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateModelImpl implements _HomeStateModel {
  _$HomeStateModelImpl({this.selectedIndex = 0, this.isLoading = false});

  factory _$HomeStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateModelImplFromJson(json);

  @override
  @JsonKey()
  final int selectedIndex;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeStateModel(selectedIndex: $selectedIndex, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateModelImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, isLoading);

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
  factory _HomeStateModel({final int selectedIndex, final bool isLoading}) =
      _$HomeStateModelImpl;

  factory _HomeStateModel.fromJson(Map<String, dynamic> json) =
      _$HomeStateModelImpl.fromJson;

  @override
  int get selectedIndex;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateModelImplCopyWith<_$HomeStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
