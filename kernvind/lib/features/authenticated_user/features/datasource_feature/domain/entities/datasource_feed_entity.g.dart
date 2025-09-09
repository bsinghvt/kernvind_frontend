// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_feed_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatasourceFeedEntityImpl _$$DatasourceFeedEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DatasourceFeedEntityImpl(
      datafeedId: (json['datafeed_id'] as num?)?.toInt(),
      createdByUserId: (json['created_by_user_id'] as num).toInt(),
      createdByName: json['created_by_name'] as String,
      datafeedName: json['datafeed_name'] as String,
      datafeedsourceId: json['datafeedsource_id'] as String,
      datafeedSourceUniqueId: json['datafeed_source_unique_id'] as String,
      datafeedDescription: json['datafeed_description'] as String?,
      datafeedSourceTitle: json['datafeed_source_title'] as String,
      accessKey: json['access_key'] as String?,
      datafeedLoadStatus: json['datafeedloadstatus_id'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$DatasourceFeedEntityImplToJson(
        _$DatasourceFeedEntityImpl instance) =>
    <String, dynamic>{
      'datafeed_id': instance.datafeedId,
      'created_by_user_id': instance.createdByUserId,
      'created_by_name': instance.createdByName,
      'datafeed_name': instance.datafeedName,
      'datafeedsource_id': instance.datafeedsourceId,
      'datafeed_source_unique_id': instance.datafeedSourceUniqueId,
      'datafeed_description': instance.datafeedDescription,
      'datafeed_source_title': instance.datafeedSourceTitle,
      'access_key': instance.accessKey,
      'datafeedloadstatus_id': instance.datafeedLoadStatus,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
    };
