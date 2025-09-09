// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatasourceListEntity _$DatasourceListEntityFromJson(Map<String, dynamic> json) {
  return _DatasourceListEntity.fromJson(json);
}

/// @nodoc
mixin _$DatasourceListEntity {
  @JsonKey(name: 'datasource_id')
  int get datasourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_name')
  String get datasourceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_description')
  String? get datasourceDescription => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get modified => throw _privateConstructorUsedError;

  /// Serializes this DatasourceListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatasourceListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatasourceListEntityCopyWith<DatasourceListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasourceListEntityCopyWith<$Res> {
  factory $DatasourceListEntityCopyWith(DatasourceListEntity value,
          $Res Function(DatasourceListEntity) then) =
      _$DatasourceListEntityCopyWithImpl<$Res, DatasourceListEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'datasource_id') int datasourceId,
      @JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'datasource_name') String datasourceName,
      @JsonKey(name: 'datasource_description') String? datasourceDescription,
      DateTime created,
      DateTime modified});
}

/// @nodoc
class _$DatasourceListEntityCopyWithImpl<$Res,
        $Val extends DatasourceListEntity>
    implements $DatasourceListEntityCopyWith<$Res> {
  _$DatasourceListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatasourceListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasourceId = null,
    Object? createdByUserId = null,
    Object? datasourceName = null,
    Object? datasourceDescription = freezed,
    Object? created = null,
    Object? modified = null,
  }) {
    return _then(_value.copyWith(
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      datasourceName: null == datasourceName
          ? _value.datasourceName
          : datasourceName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceDescription: freezed == datasourceDescription
          ? _value.datasourceDescription
          : datasourceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatasourceListEntityImplCopyWith<$Res>
    implements $DatasourceListEntityCopyWith<$Res> {
  factory _$$DatasourceListEntityImplCopyWith(_$DatasourceListEntityImpl value,
          $Res Function(_$DatasourceListEntityImpl) then) =
      __$$DatasourceListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'datasource_id') int datasourceId,
      @JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'datasource_name') String datasourceName,
      @JsonKey(name: 'datasource_description') String? datasourceDescription,
      DateTime created,
      DateTime modified});
}

/// @nodoc
class __$$DatasourceListEntityImplCopyWithImpl<$Res>
    extends _$DatasourceListEntityCopyWithImpl<$Res, _$DatasourceListEntityImpl>
    implements _$$DatasourceListEntityImplCopyWith<$Res> {
  __$$DatasourceListEntityImplCopyWithImpl(_$DatasourceListEntityImpl _value,
      $Res Function(_$DatasourceListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatasourceListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasourceId = null,
    Object? createdByUserId = null,
    Object? datasourceName = null,
    Object? datasourceDescription = freezed,
    Object? created = null,
    Object? modified = null,
  }) {
    return _then(_$DatasourceListEntityImpl(
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      datasourceName: null == datasourceName
          ? _value.datasourceName
          : datasourceName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceDescription: freezed == datasourceDescription
          ? _value.datasourceDescription
          : datasourceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatasourceListEntityImpl implements _DatasourceListEntity {
  _$DatasourceListEntityImpl(
      {@JsonKey(name: 'datasource_id') required this.datasourceId,
      @JsonKey(name: 'created_by_user_id') required this.createdByUserId,
      @JsonKey(name: 'datasource_name') required this.datasourceName,
      @JsonKey(name: 'datasource_description') this.datasourceDescription,
      required this.created,
      required this.modified});

  factory _$DatasourceListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasourceListEntityImplFromJson(json);

  @override
  @JsonKey(name: 'datasource_id')
  final int datasourceId;
  @override
  @JsonKey(name: 'created_by_user_id')
  final int createdByUserId;
  @override
  @JsonKey(name: 'datasource_name')
  final String datasourceName;
  @override
  @JsonKey(name: 'datasource_description')
  final String? datasourceDescription;
  @override
  final DateTime created;
  @override
  final DateTime modified;

  @override
  String toString() {
    return 'DatasourceListEntity(datasourceId: $datasourceId, createdByUserId: $createdByUserId, datasourceName: $datasourceName, datasourceDescription: $datasourceDescription, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasourceListEntityImpl &&
            (identical(other.datasourceId, datasourceId) ||
                other.datasourceId == datasourceId) &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            (identical(other.datasourceName, datasourceName) ||
                other.datasourceName == datasourceName) &&
            (identical(other.datasourceDescription, datasourceDescription) ||
                other.datasourceDescription == datasourceDescription) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, datasourceId, createdByUserId,
      datasourceName, datasourceDescription, created, modified);

  /// Create a copy of DatasourceListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasourceListEntityImplCopyWith<_$DatasourceListEntityImpl>
      get copyWith =>
          __$$DatasourceListEntityImplCopyWithImpl<_$DatasourceListEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasourceListEntityImplToJson(
      this,
    );
  }
}

abstract class _DatasourceListEntity implements DatasourceListEntity {
  factory _DatasourceListEntity(
      {@JsonKey(name: 'datasource_id') required final int datasourceId,
      @JsonKey(name: 'created_by_user_id') required final int createdByUserId,
      @JsonKey(name: 'datasource_name') required final String datasourceName,
      @JsonKey(name: 'datasource_description')
      final String? datasourceDescription,
      required final DateTime created,
      required final DateTime modified}) = _$DatasourceListEntityImpl;

  factory _DatasourceListEntity.fromJson(Map<String, dynamic> json) =
      _$DatasourceListEntityImpl.fromJson;

  @override
  @JsonKey(name: 'datasource_id')
  int get datasourceId;
  @override
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId;
  @override
  @JsonKey(name: 'datasource_name')
  String get datasourceName;
  @override
  @JsonKey(name: 'datasource_description')
  String? get datasourceDescription;
  @override
  DateTime get created;
  @override
  DateTime get modified;

  /// Create a copy of DatasourceListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatasourceListEntityImplCopyWith<_$DatasourceListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
