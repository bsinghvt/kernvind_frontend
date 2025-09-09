// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_add_feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatasourceAddFeedEntity _$DatasourceAddFeedEntityFromJson(
    Map<String, dynamic> json) {
  return _DatasourceAddFeedEntity.fromJson(json);
}

/// @nodoc
mixin _$DatasourceAddFeedEntity {
  @JsonKey(name: 'datasource_id')
  int get datasourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_name')
  String get datafeedName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeedsource_id')
  String get datafeedsourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_source_unique_id')
  String get datafeedSourceUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_source_title')
  String get datafeedSourceTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_key')
  String? get accessKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'datafeed_description')
  String? get datafeedDescription => throw _privateConstructorUsedError;

  /// Serializes this DatasourceAddFeedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatasourceAddFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatasourceAddFeedEntityCopyWith<DatasourceAddFeedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasourceAddFeedEntityCopyWith<$Res> {
  factory $DatasourceAddFeedEntityCopyWith(DatasourceAddFeedEntity value,
          $Res Function(DatasourceAddFeedEntity) then) =
      _$DatasourceAddFeedEntityCopyWithImpl<$Res, DatasourceAddFeedEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'datasource_id') int datasourceId,
      @JsonKey(name: 'datafeed_name') String datafeedName,
      @JsonKey(name: 'datafeedsource_id') String datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id') String datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_source_title') String datafeedSourceTitle,
      @JsonKey(name: 'access_key') String? accessKey,
      @JsonKey(name: 'datafeed_description') String? datafeedDescription});
}

/// @nodoc
class _$DatasourceAddFeedEntityCopyWithImpl<$Res,
        $Val extends DatasourceAddFeedEntity>
    implements $DatasourceAddFeedEntityCopyWith<$Res> {
  _$DatasourceAddFeedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatasourceAddFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasourceId = null,
    Object? datafeedName = null,
    Object? datafeedsourceId = null,
    Object? datafeedSourceUniqueId = null,
    Object? datafeedSourceTitle = null,
    Object? accessKey = freezed,
    Object? datafeedDescription = freezed,
  }) {
    return _then(_value.copyWith(
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
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
      datafeedSourceTitle: null == datafeedSourceTitle
          ? _value.datafeedSourceTitle
          : datafeedSourceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      datafeedDescription: freezed == datafeedDescription
          ? _value.datafeedDescription
          : datafeedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatasourceAddFeedEntityImplCopyWith<$Res>
    implements $DatasourceAddFeedEntityCopyWith<$Res> {
  factory _$$DatasourceAddFeedEntityImplCopyWith(
          _$DatasourceAddFeedEntityImpl value,
          $Res Function(_$DatasourceAddFeedEntityImpl) then) =
      __$$DatasourceAddFeedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'datasource_id') int datasourceId,
      @JsonKey(name: 'datafeed_name') String datafeedName,
      @JsonKey(name: 'datafeedsource_id') String datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id') String datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_source_title') String datafeedSourceTitle,
      @JsonKey(name: 'access_key') String? accessKey,
      @JsonKey(name: 'datafeed_description') String? datafeedDescription});
}

/// @nodoc
class __$$DatasourceAddFeedEntityImplCopyWithImpl<$Res>
    extends _$DatasourceAddFeedEntityCopyWithImpl<$Res,
        _$DatasourceAddFeedEntityImpl>
    implements _$$DatasourceAddFeedEntityImplCopyWith<$Res> {
  __$$DatasourceAddFeedEntityImplCopyWithImpl(
      _$DatasourceAddFeedEntityImpl _value,
      $Res Function(_$DatasourceAddFeedEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatasourceAddFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasourceId = null,
    Object? datafeedName = null,
    Object? datafeedsourceId = null,
    Object? datafeedSourceUniqueId = null,
    Object? datafeedSourceTitle = null,
    Object? accessKey = freezed,
    Object? datafeedDescription = freezed,
  }) {
    return _then(_$DatasourceAddFeedEntityImpl(
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
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
      datafeedSourceTitle: null == datafeedSourceTitle
          ? _value.datafeedSourceTitle
          : datafeedSourceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      datafeedDescription: freezed == datafeedDescription
          ? _value.datafeedDescription
          : datafeedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatasourceAddFeedEntityImpl implements _DatasourceAddFeedEntity {
  _$DatasourceAddFeedEntityImpl(
      {@JsonKey(name: 'datasource_id') required this.datasourceId,
      @JsonKey(name: 'datafeed_name') required this.datafeedName,
      @JsonKey(name: 'datafeedsource_id') required this.datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id')
      required this.datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_source_title') required this.datafeedSourceTitle,
      @JsonKey(name: 'access_key') this.accessKey,
      @JsonKey(name: 'datafeed_description') this.datafeedDescription});

  factory _$DatasourceAddFeedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasourceAddFeedEntityImplFromJson(json);

  @override
  @JsonKey(name: 'datasource_id')
  final int datasourceId;
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
  @JsonKey(name: 'datafeed_source_title')
  final String datafeedSourceTitle;
  @override
  @JsonKey(name: 'access_key')
  final String? accessKey;
  @override
  @JsonKey(name: 'datafeed_description')
  final String? datafeedDescription;

  @override
  String toString() {
    return 'DatasourceAddFeedEntity(datasourceId: $datasourceId, datafeedName: $datafeedName, datafeedsourceId: $datafeedsourceId, datafeedSourceUniqueId: $datafeedSourceUniqueId, datafeedSourceTitle: $datafeedSourceTitle, accessKey: $accessKey, datafeedDescription: $datafeedDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasourceAddFeedEntityImpl &&
            (identical(other.datasourceId, datasourceId) ||
                other.datasourceId == datasourceId) &&
            (identical(other.datafeedName, datafeedName) ||
                other.datafeedName == datafeedName) &&
            (identical(other.datafeedsourceId, datafeedsourceId) ||
                other.datafeedsourceId == datafeedsourceId) &&
            (identical(other.datafeedSourceUniqueId, datafeedSourceUniqueId) ||
                other.datafeedSourceUniqueId == datafeedSourceUniqueId) &&
            (identical(other.datafeedSourceTitle, datafeedSourceTitle) ||
                other.datafeedSourceTitle == datafeedSourceTitle) &&
            (identical(other.accessKey, accessKey) ||
                other.accessKey == accessKey) &&
            (identical(other.datafeedDescription, datafeedDescription) ||
                other.datafeedDescription == datafeedDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      datasourceId,
      datafeedName,
      datafeedsourceId,
      datafeedSourceUniqueId,
      datafeedSourceTitle,
      accessKey,
      datafeedDescription);

  /// Create a copy of DatasourceAddFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasourceAddFeedEntityImplCopyWith<_$DatasourceAddFeedEntityImpl>
      get copyWith => __$$DatasourceAddFeedEntityImplCopyWithImpl<
          _$DatasourceAddFeedEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasourceAddFeedEntityImplToJson(
      this,
    );
  }
}

abstract class _DatasourceAddFeedEntity implements DatasourceAddFeedEntity {
  factory _DatasourceAddFeedEntity(
      {@JsonKey(name: 'datasource_id') required final int datasourceId,
      @JsonKey(name: 'datafeed_name') required final String datafeedName,
      @JsonKey(name: 'datafeedsource_id')
      required final String datafeedsourceId,
      @JsonKey(name: 'datafeed_source_unique_id')
      required final String datafeedSourceUniqueId,
      @JsonKey(name: 'datafeed_source_title')
      required final String datafeedSourceTitle,
      @JsonKey(name: 'access_key') final String? accessKey,
      @JsonKey(name: 'datafeed_description')
      final String? datafeedDescription}) = _$DatasourceAddFeedEntityImpl;

  factory _DatasourceAddFeedEntity.fromJson(Map<String, dynamic> json) =
      _$DatasourceAddFeedEntityImpl.fromJson;

  @override
  @JsonKey(name: 'datasource_id')
  int get datasourceId;
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
  @JsonKey(name: 'datafeed_source_title')
  String get datafeedSourceTitle;
  @override
  @JsonKey(name: 'access_key')
  String? get accessKey;
  @override
  @JsonKey(name: 'datafeed_description')
  String? get datafeedDescription;

  /// Create a copy of DatasourceAddFeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatasourceAddFeedEntityImplCopyWith<_$DatasourceAddFeedEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
