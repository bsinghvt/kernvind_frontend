// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_create_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatasourceCreateEntity _$DatasourceCreateEntityFromJson(
    Map<String, dynamic> json) {
  return _DatasourceCreateEntity.fromJson(json);
}

/// @nodoc
mixin _$DatasourceCreateEntity {
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_name')
  String get createdByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_name')
  String get datasourceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_description')
  String? get datasourceDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_feed')
  DatasourceFeedEntity get datasourceFeed => throw _privateConstructorUsedError;

  /// Serializes this DatasourceCreateEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatasourceCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatasourceCreateEntityCopyWith<DatasourceCreateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasourceCreateEntityCopyWith<$Res> {
  factory $DatasourceCreateEntityCopyWith(DatasourceCreateEntity value,
          $Res Function(DatasourceCreateEntity) then) =
      _$DatasourceCreateEntityCopyWithImpl<$Res, DatasourceCreateEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'created_by_name') String createdByName,
      @JsonKey(name: 'datasource_name') String datasourceName,
      @JsonKey(name: 'datasource_description') String? datasourceDescription,
      @JsonKey(name: 'datasource_feed') DatasourceFeedEntity datasourceFeed});

  $DatasourceFeedEntityCopyWith<$Res> get datasourceFeed;
}

/// @nodoc
class _$DatasourceCreateEntityCopyWithImpl<$Res,
        $Val extends DatasourceCreateEntity>
    implements $DatasourceCreateEntityCopyWith<$Res> {
  _$DatasourceCreateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatasourceCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdByUserId = null,
    Object? createdByName = null,
    Object? datasourceName = null,
    Object? datasourceDescription = freezed,
    Object? datasourceFeed = null,
  }) {
    return _then(_value.copyWith(
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByName: null == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceName: null == datasourceName
          ? _value.datasourceName
          : datasourceName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceDescription: freezed == datasourceDescription
          ? _value.datasourceDescription
          : datasourceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      datasourceFeed: null == datasourceFeed
          ? _value.datasourceFeed
          : datasourceFeed // ignore: cast_nullable_to_non_nullable
              as DatasourceFeedEntity,
    ) as $Val);
  }

  /// Create a copy of DatasourceCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatasourceFeedEntityCopyWith<$Res> get datasourceFeed {
    return $DatasourceFeedEntityCopyWith<$Res>(_value.datasourceFeed, (value) {
      return _then(_value.copyWith(datasourceFeed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatasourceCreateEntityImplCopyWith<$Res>
    implements $DatasourceCreateEntityCopyWith<$Res> {
  factory _$$DatasourceCreateEntityImplCopyWith(
          _$DatasourceCreateEntityImpl value,
          $Res Function(_$DatasourceCreateEntityImpl) then) =
      __$$DatasourceCreateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'created_by_name') String createdByName,
      @JsonKey(name: 'datasource_name') String datasourceName,
      @JsonKey(name: 'datasource_description') String? datasourceDescription,
      @JsonKey(name: 'datasource_feed') DatasourceFeedEntity datasourceFeed});

  @override
  $DatasourceFeedEntityCopyWith<$Res> get datasourceFeed;
}

/// @nodoc
class __$$DatasourceCreateEntityImplCopyWithImpl<$Res>
    extends _$DatasourceCreateEntityCopyWithImpl<$Res,
        _$DatasourceCreateEntityImpl>
    implements _$$DatasourceCreateEntityImplCopyWith<$Res> {
  __$$DatasourceCreateEntityImplCopyWithImpl(
      _$DatasourceCreateEntityImpl _value,
      $Res Function(_$DatasourceCreateEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatasourceCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdByUserId = null,
    Object? createdByName = null,
    Object? datasourceName = null,
    Object? datasourceDescription = freezed,
    Object? datasourceFeed = null,
  }) {
    return _then(_$DatasourceCreateEntityImpl(
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByName: null == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceName: null == datasourceName
          ? _value.datasourceName
          : datasourceName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceDescription: freezed == datasourceDescription
          ? _value.datasourceDescription
          : datasourceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      datasourceFeed: null == datasourceFeed
          ? _value.datasourceFeed
          : datasourceFeed // ignore: cast_nullable_to_non_nullable
              as DatasourceFeedEntity,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DatasourceCreateEntityImpl implements _DatasourceCreateEntity {
  _$DatasourceCreateEntityImpl(
      {@JsonKey(name: 'created_by_user_id') required this.createdByUserId,
      @JsonKey(name: 'created_by_name') required this.createdByName,
      @JsonKey(name: 'datasource_name') required this.datasourceName,
      @JsonKey(name: 'datasource_description') this.datasourceDescription,
      @JsonKey(name: 'datasource_feed') required this.datasourceFeed});

  factory _$DatasourceCreateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasourceCreateEntityImplFromJson(json);

  @override
  @JsonKey(name: 'created_by_user_id')
  final int createdByUserId;
  @override
  @JsonKey(name: 'created_by_name')
  final String createdByName;
  @override
  @JsonKey(name: 'datasource_name')
  final String datasourceName;
  @override
  @JsonKey(name: 'datasource_description')
  final String? datasourceDescription;
  @override
  @JsonKey(name: 'datasource_feed')
  final DatasourceFeedEntity datasourceFeed;

  @override
  String toString() {
    return 'DatasourceCreateEntity(createdByUserId: $createdByUserId, createdByName: $createdByName, datasourceName: $datasourceName, datasourceDescription: $datasourceDescription, datasourceFeed: $datasourceFeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasourceCreateEntityImpl &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.datasourceName, datasourceName) ||
                other.datasourceName == datasourceName) &&
            (identical(other.datasourceDescription, datasourceDescription) ||
                other.datasourceDescription == datasourceDescription) &&
            (identical(other.datasourceFeed, datasourceFeed) ||
                other.datasourceFeed == datasourceFeed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdByUserId, createdByName,
      datasourceName, datasourceDescription, datasourceFeed);

  /// Create a copy of DatasourceCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasourceCreateEntityImplCopyWith<_$DatasourceCreateEntityImpl>
      get copyWith => __$$DatasourceCreateEntityImplCopyWithImpl<
          _$DatasourceCreateEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasourceCreateEntityImplToJson(
      this,
    );
  }
}

abstract class _DatasourceCreateEntity implements DatasourceCreateEntity {
  factory _DatasourceCreateEntity(
      {@JsonKey(name: 'created_by_user_id') required final int createdByUserId,
      @JsonKey(name: 'created_by_name') required final String createdByName,
      @JsonKey(name: 'datasource_name') required final String datasourceName,
      @JsonKey(name: 'datasource_description')
      final String? datasourceDescription,
      @JsonKey(name: 'datasource_feed')
      required final DatasourceFeedEntity
          datasourceFeed}) = _$DatasourceCreateEntityImpl;

  factory _DatasourceCreateEntity.fromJson(Map<String, dynamic> json) =
      _$DatasourceCreateEntityImpl.fromJson;

  @override
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId;
  @override
  @JsonKey(name: 'created_by_name')
  String get createdByName;
  @override
  @JsonKey(name: 'datasource_name')
  String get datasourceName;
  @override
  @JsonKey(name: 'datasource_description')
  String? get datasourceDescription;
  @override
  @JsonKey(name: 'datasource_feed')
  DatasourceFeedEntity get datasourceFeed;

  /// Create a copy of DatasourceCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatasourceCreateEntityImplCopyWith<_$DatasourceCreateEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
