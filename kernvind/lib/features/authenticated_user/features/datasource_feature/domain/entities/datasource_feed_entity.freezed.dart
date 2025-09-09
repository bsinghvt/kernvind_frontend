// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatasourceFeedEntity _$DatasourceFeedEntityFromJson(Map<String, dynamic> json) {
  return _DatasourceFeedEntity.fromJson(json);
}

/// @nodoc
mixin _$DatasourceFeedEntity {
  @JsonKey(name: 'datafeed_id')
  int? get datafeedId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_name')
  String get createdByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_name')
  String get datafeedName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeedsource_id')
  String get datafeedsourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_source_unique_id')
  String get datafeedSourceUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_description')
  String? get datafeedDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_source_title')
  String get datafeedSourceTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_key')
  String? get accessKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeedloadstatus_id')
  String? get datafeedLoadStatus => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;

  /// Serializes this DatasourceFeedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatasourceFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatasourceFeedEntityCopyWith<DatasourceFeedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasourceFeedEntityCopyWith<$Res> {
  factory $DatasourceFeedEntityCopyWith(DatasourceFeedEntity value,
          $Res Function(DatasourceFeedEntity) then) =
      _$DatasourceFeedEntityCopyWithImpl<$Res, DatasourceFeedEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'datafeed_id') int? datafeedId,
      @JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'created_by_name') String createdByName,
      @JsonKey(name: 'datafeed_name') String datafeedName,
      @JsonKey(name: 'datafeedsource_id') String datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id') String datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_description') String? datafeedDescription,
      @JsonKey(name: 'datafeed_source_title') String datafeedSourceTitle,
      @JsonKey(name: 'access_key') String? accessKey,
      @JsonKey(name: 'datafeedloadstatus_id') String? datafeedLoadStatus,
      DateTime? created,
      DateTime? modified});
}

/// @nodoc
class _$DatasourceFeedEntityCopyWithImpl<$Res,
        $Val extends DatasourceFeedEntity>
    implements $DatasourceFeedEntityCopyWith<$Res> {
  _$DatasourceFeedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatasourceFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datafeedId = freezed,
    Object? createdByUserId = null,
    Object? createdByName = null,
    Object? datafeedName = null,
    Object? datafeedsourceId = null,
    Object? datafeedSourceUniqueId = null,
    Object? datafeedDescription = freezed,
    Object? datafeedSourceTitle = null,
    Object? accessKey = freezed,
    Object? datafeedLoadStatus = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_value.copyWith(
      datafeedId: freezed == datafeedId
          ? _value.datafeedId
          : datafeedId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByName: null == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedName: null == datafeedName
          ? _value.datafeedName
          : datafeedName // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedsourceId: null == datafeedsourceId
          ? _value.datafeedsourceId
          : datafeedsourceId // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedSourceUniqueId: null == datafeedSourceUniqueId
          ? _value.datafeedSourceUniqueId
          : datafeedSourceUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedDescription: freezed == datafeedDescription
          ? _value.datafeedDescription
          : datafeedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      datafeedSourceTitle: null == datafeedSourceTitle
          ? _value.datafeedSourceTitle
          : datafeedSourceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      datafeedLoadStatus: freezed == datafeedLoadStatus
          ? _value.datafeedLoadStatus
          : datafeedLoadStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatasourceFeedEntityImplCopyWith<$Res>
    implements $DatasourceFeedEntityCopyWith<$Res> {
  factory _$$DatasourceFeedEntityImplCopyWith(_$DatasourceFeedEntityImpl value,
          $Res Function(_$DatasourceFeedEntityImpl) then) =
      __$$DatasourceFeedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'datafeed_id') int? datafeedId,
      @JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'created_by_name') String createdByName,
      @JsonKey(name: 'datafeed_name') String datafeedName,
      @JsonKey(name: 'datafeedsource_id') String datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id') String datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_description') String? datafeedDescription,
      @JsonKey(name: 'datafeed_source_title') String datafeedSourceTitle,
      @JsonKey(name: 'access_key') String? accessKey,
      @JsonKey(name: 'datafeedloadstatus_id') String? datafeedLoadStatus,
      DateTime? created,
      DateTime? modified});
}

/// @nodoc
class __$$DatasourceFeedEntityImplCopyWithImpl<$Res>
    extends _$DatasourceFeedEntityCopyWithImpl<$Res, _$DatasourceFeedEntityImpl>
    implements _$$DatasourceFeedEntityImplCopyWith<$Res> {
  __$$DatasourceFeedEntityImplCopyWithImpl(_$DatasourceFeedEntityImpl _value,
      $Res Function(_$DatasourceFeedEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatasourceFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datafeedId = freezed,
    Object? createdByUserId = null,
    Object? createdByName = null,
    Object? datafeedName = null,
    Object? datafeedsourceId = null,
    Object? datafeedSourceUniqueId = null,
    Object? datafeedDescription = freezed,
    Object? datafeedSourceTitle = null,
    Object? accessKey = freezed,
    Object? datafeedLoadStatus = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_$DatasourceFeedEntityImpl(
      datafeedId: freezed == datafeedId
          ? _value.datafeedId
          : datafeedId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByName: null == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedName: null == datafeedName
          ? _value.datafeedName
          : datafeedName // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedsourceId: null == datafeedsourceId
          ? _value.datafeedsourceId
          : datafeedsourceId // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedSourceUniqueId: null == datafeedSourceUniqueId
          ? _value.datafeedSourceUniqueId
          : datafeedSourceUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      datafeedDescription: freezed == datafeedDescription
          ? _value.datafeedDescription
          : datafeedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      datafeedSourceTitle: null == datafeedSourceTitle
          ? _value.datafeedSourceTitle
          : datafeedSourceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      datafeedLoadStatus: freezed == datafeedLoadStatus
          ? _value.datafeedLoadStatus
          : datafeedLoadStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatasourceFeedEntityImpl implements _DatasourceFeedEntity {
  _$DatasourceFeedEntityImpl(
      {@JsonKey(name: 'datafeed_id') this.datafeedId,
      @JsonKey(name: 'created_by_user_id') required this.createdByUserId,
      @JsonKey(name: 'created_by_name') required this.createdByName,
      @JsonKey(name: 'datafeed_name') required this.datafeedName,
      @JsonKey(name: 'datafeedsource_id') required this.datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id')
      required this.datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_description') this.datafeedDescription,
      @JsonKey(name: 'datafeed_source_title') required this.datafeedSourceTitle,
      @JsonKey(name: 'access_key') this.accessKey,
      @JsonKey(name: 'datafeedloadstatus_id') this.datafeedLoadStatus,
      this.created,
      this.modified});

  factory _$DatasourceFeedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasourceFeedEntityImplFromJson(json);

  @override
  @JsonKey(name: 'datafeed_id')
  final int? datafeedId;
  @override
  @JsonKey(name: 'created_by_user_id')
  final int createdByUserId;
  @override
  @JsonKey(name: 'created_by_name')
  final String createdByName;
  @override
  @JsonKey(name: 'datafeed_name')
  final String datafeedName;
  @override
  @JsonKey(name: 'datafeedsource_id')
  final String datafeedsourceId;
  @override
  @JsonKey(name: 'datafeed_source_unique_id')
  final String datafeedSourceUniqueId;
  @override
  @JsonKey(name: 'datafeed_description')
  final String? datafeedDescription;
  @override
  @JsonKey(name: 'datafeed_source_title')
  final String datafeedSourceTitle;
  @override
  @JsonKey(name: 'access_key')
  final String? accessKey;
  @override
  @JsonKey(name: 'datafeedloadstatus_id')
  final String? datafeedLoadStatus;
  @override
  final DateTime? created;
  @override
  final DateTime? modified;

  @override
  String toString() {
    return 'DatasourceFeedEntity(datafeedId: $datafeedId, createdByUserId: $createdByUserId, createdByName: $createdByName, datafeedName: $datafeedName, datafeedsourceId: $datafeedsourceId, datafeedSourceUniqueId: $datafeedSourceUniqueId, datafeedDescription: $datafeedDescription, datafeedSourceTitle: $datafeedSourceTitle, accessKey: $accessKey, datafeedLoadStatus: $datafeedLoadStatus, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasourceFeedEntityImpl &&
            (identical(other.datafeedId, datafeedId) ||
                other.datafeedId == datafeedId) &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.datafeedName, datafeedName) ||
                other.datafeedName == datafeedName) &&
            (identical(other.datafeedsourceId, datafeedsourceId) ||
                other.datafeedsourceId == datafeedsourceId) &&
            (identical(other.datafeedSourceUniqueId, datafeedSourceUniqueId) ||
                other.datafeedSourceUniqueId == datafeedSourceUniqueId) &&
            (identical(other.datafeedDescription, datafeedDescription) ||
                other.datafeedDescription == datafeedDescription) &&
            (identical(other.datafeedSourceTitle, datafeedSourceTitle) ||
                other.datafeedSourceTitle == datafeedSourceTitle) &&
            (identical(other.accessKey, accessKey) ||
                other.accessKey == accessKey) &&
            (identical(other.datafeedLoadStatus, datafeedLoadStatus) ||
                other.datafeedLoadStatus == datafeedLoadStatus) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      datafeedId,
      createdByUserId,
      createdByName,
      datafeedName,
      datafeedsourceId,
      datafeedSourceUniqueId,
      datafeedDescription,
      datafeedSourceTitle,
      accessKey,
      datafeedLoadStatus,
      created,
      modified);

  /// Create a copy of DatasourceFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasourceFeedEntityImplCopyWith<_$DatasourceFeedEntityImpl>
      get copyWith =>
          __$$DatasourceFeedEntityImplCopyWithImpl<_$DatasourceFeedEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasourceFeedEntityImplToJson(
      this,
    );
  }
}

abstract class _DatasourceFeedEntity implements DatasourceFeedEntity {
  factory _DatasourceFeedEntity(
      {@JsonKey(name: 'datafeed_id') final int? datafeedId,
      @JsonKey(name: 'created_by_user_id') required final int createdByUserId,
      @JsonKey(name: 'created_by_name') required final String createdByName,
      @JsonKey(name: 'datafeed_name') required final String datafeedName,
      @JsonKey(name: 'datafeedsource_id')
      required final String datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id')
      required final String datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_description') final String? datafeedDescription,
      @JsonKey(name: 'datafeed_source_title')
      required final String datafeedSourceTitle,
      @JsonKey(name: 'access_key') final String? accessKey,
      @JsonKey(name: 'datafeedloadstatus_id') final String? datafeedLoadStatus,
      final DateTime? created,
      final DateTime? modified}) = _$DatasourceFeedEntityImpl;

  factory _DatasourceFeedEntity.fromJson(Map<String, dynamic> json) =
      _$DatasourceFeedEntityImpl.fromJson;

  @override
  @JsonKey(name: 'datafeed_id')
  int? get datafeedId;
  @override
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId;
  @override
  @JsonKey(name: 'created_by_name')
  String get createdByName;
  @override
  @JsonKey(name: 'datafeed_name')
  String get datafeedName;
  @override
  @JsonKey(name: 'datafeedsource_id')
  String get datafeedsourceId;
  @override
  @JsonKey(name: 'datafeed_source_unique_id')
  String get datafeedSourceUniqueId;
  @override
  @JsonKey(name: 'datafeed_description')
  String? get datafeedDescription;
  @override
  @JsonKey(name: 'datafeed_source_title')
  String get datafeedSourceTitle;
  @override
  @JsonKey(name: 'access_key')
  String? get accessKey;
  @override
  @JsonKey(name: 'datafeedloadstatus_id')
  String? get datafeedLoadStatus;
  @override
  DateTime? get created;
  @override
  DateTime? get modified;

  /// Create a copy of DatasourceFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatasourceFeedEntityImplCopyWith<_$DatasourceFeedEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
