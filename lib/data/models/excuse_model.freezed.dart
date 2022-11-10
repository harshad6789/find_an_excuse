// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'excuse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExcuseModel _$ExcuseModelFromJson(Map<String, dynamic> json) {
  return _ExcuseModel.fromJson(json);
}

/// @nodoc
mixin _$ExcuseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get excuse => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExcuseModelCopyWith<ExcuseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExcuseModelCopyWith<$Res> {
  factory $ExcuseModelCopyWith(
          ExcuseModel value, $Res Function(ExcuseModel) then) =
      _$ExcuseModelCopyWithImpl<$Res, ExcuseModel>;
  @useResult
  $Res call({int? id, String? excuse, String? category});
}

/// @nodoc
class _$ExcuseModelCopyWithImpl<$Res, $Val extends ExcuseModel>
    implements $ExcuseModelCopyWith<$Res> {
  _$ExcuseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? excuse = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      excuse: freezed == excuse
          ? _value.excuse
          : excuse // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExcuseModelCopyWith<$Res>
    implements $ExcuseModelCopyWith<$Res> {
  factory _$$_ExcuseModelCopyWith(
          _$_ExcuseModel value, $Res Function(_$_ExcuseModel) then) =
      __$$_ExcuseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? excuse, String? category});
}

/// @nodoc
class __$$_ExcuseModelCopyWithImpl<$Res>
    extends _$ExcuseModelCopyWithImpl<$Res, _$_ExcuseModel>
    implements _$$_ExcuseModelCopyWith<$Res> {
  __$$_ExcuseModelCopyWithImpl(
      _$_ExcuseModel _value, $Res Function(_$_ExcuseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? excuse = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_ExcuseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      excuse: freezed == excuse
          ? _value.excuse
          : excuse // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExcuseModel implements _ExcuseModel {
  const _$_ExcuseModel({this.id, this.excuse, this.category});

  factory _$_ExcuseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExcuseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? excuse;
  @override
  final String? category;

  @override
  String toString() {
    return 'ExcuseModel(id: $id, excuse: $excuse, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExcuseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.excuse, excuse) || other.excuse == excuse) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, excuse, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExcuseModelCopyWith<_$_ExcuseModel> get copyWith =>
      __$$_ExcuseModelCopyWithImpl<_$_ExcuseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExcuseModelToJson(
      this,
    );
  }
}

abstract class _ExcuseModel implements ExcuseModel {
  const factory _ExcuseModel(
      {final int? id,
      final String? excuse,
      final String? category}) = _$_ExcuseModel;

  factory _ExcuseModel.fromJson(Map<String, dynamic> json) =
      _$_ExcuseModel.fromJson;

  @override
  int? get id;
  @override
  String? get excuse;
  @override
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$_ExcuseModelCopyWith<_$_ExcuseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
