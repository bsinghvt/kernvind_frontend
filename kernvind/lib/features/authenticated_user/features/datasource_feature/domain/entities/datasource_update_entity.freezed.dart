// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_update_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatasourceUpdateEntity _$DatasourceUpdateEntityFromJson(
    Map<String, dynamic> json) {
  return _DatasourceUpdateEntity.fromJson(json);
}

/// @nodoc
mixin _$DatasourceUpdateEntity {
  @JsonKey(name: 'datasource_id')
  int get datasourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_description')
  String? get datasourceDescription => throw _privateConstructorUsedError;

  /// Serializes this DatasourceUpdateEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatasourceUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatasourceUpdateEntityCopyWith<DatasourceUpdateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasourceUpdateEntityCopyWith<$Res> {
  factory $DatasourceUpdateEntityCopyWith(DatasourceUpdateEntity value,
          $Res Function(DatasourceUpdateEntity) then) =
      _$DatasourceUpdateEntityCopyWithImpl<$Res, DatasourceUpdateEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'datasource_id') int datasourceId,
      @JsonKey(name: 'datasource_description') String? datasourceDescription});
}

/// @nodoc
class _$DatasourceUpdateEntityCopyWithImpl<$Res,
        $Val extends DatasourceUpdateEntity>
    implements $DatasourceUpdateEntityCopyWith<$Res> {
  _$DatasourceUpdateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatasourceUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasourceId = null,
    Object? datasourceDescription = freezed,
  }) {
    return _then(_value.copyWith(
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
      datasourceDescription: freezed == datasourceDescription
          ? _value.datasourceDescription
          : datasourceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatasourceUpdateEntityImplCopyWith<$Res>
    implements $DatasourceUpdateEntityCopyWith<$Res> {
  factory _$$DatasourceUpdateEntityImplCopyWith(
          _$DatasourceUpdateEntityImpl value,
          $Res Function(_$DatasourceUpdateEntityImpl) then) =
      __$$DatasourceUpdateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'datasource_id') int datasourceId,
      @JsonKey(name: 'datasource_description') String? datasourceDescription});
}

/// @nodoc
class __$$DatasourceUpdateEntityImplCopyWithImpl<$Res>
    extends _$DatasourceUpdateEntityCopyWithImpl<$Res,
        _$DatasourceUpdateEntityImpl>
    implements _$$DatasourceUpdateEntityImplCopyWith<$Res> {
  __$$DatasourceUpdateEntityImplCopyWithImpl(
      _$DatasourceUpdateEntityImpl _value,
      $Res Function(_$DatasourceUpdateEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatasourceUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasourceId = null,
    Object? datasourceDescription = freezed,
  }) {
    return _then(_$DatasourceUpdateEntityImpl(
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
      datasourceDescription: freezed == datasourceDescription
          ? _value.datasourceDescription
          : datasourceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatasourceUpdateEntityImpl implements _DatasourceUpdateEntity {
  _$DatasourceUpdateEntityImpl(
      {@JsonKey(name: 'datasource_id') required this.datasourceId,
      @JsonKey(name: 'datasource_description') this.datasourceDescription});

  factory _$DatasourceUpdateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasourceUpdateEntityImplFromJson(json);

  @override
  @JsonKey(name: 'datasource_id')
  final int datasourceId;
  @override
  @JsonKey(name: 'datasource_description')
  final String? datasourceDescription;

  @override
  String toString() {
    return 'DatasourceUpdateEntity(datasourceId: $datasourceId, datasourceDescription: $datasourceDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasourceUpdateEntityImpl &&
            (identical(other.datasourceId, datasourceId) ||
                other.datasourceId == datasourceId) &&
            (identical(other.datasourceDescription, datasourceDescription) ||
                other.datasourceDescription == datasourceDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, datasourceId, datasourceDescription);

  /// Create a copy of DatasourceUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasourceUpdateEntityImplCopyWith<_$DatasourceUpdateEntityImpl>
      get copyWith => __$$DatasourceUpdateEntityImplCopyWithImpl<
          _$DatasourceUpdateEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasourceUpdateEntityImplToJson(
      this,
    );
  }
}

abstract class _DatasourceUpdateEntity implements DatasourceUpdateEntity {
  factory _DatasourceUpdateEntity(
      {@JsonKey(name: 'datasource_id') required final int datasourceId,
      @JsonKey(name: 'datasource_description')
      final String? datasourceDescription}) = _$DatasourceUpdateEntityImpl;

  factory _DatasourceUpdateEntity.fromJson(Map<String, dynamic> json) =
      _$DatasourceUpdateEntityImpl.fromJson;

  @override
  @JsonKey(name: 'datasource_id')
  int get datasourceId;
  @override
  @JsonKey(name: 'datasource_description')
  String? get datasourceDescription;

  /// Create a copy of DatasourceUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatasourceUpdateEntityImplCopyWith<_$DatasourceUpdateEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
