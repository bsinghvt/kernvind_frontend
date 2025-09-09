// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_add_feed_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatasourceAddFeedEntityImpl _$$DatasourceAddFeedEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DatasourceAddFeedEntityImpl(
      datasourceId: (json['datasource_id'] as num).toInt(),
      datafeedName: json['datafeed_name'] as String,
      datafeedsourceId: json['datafeedsource_id'] as String,
      datafeedSourceUniqueId: json['datafeed_source_unique_id'] as String,
      datafeedSourceTitle: json['datafeed_source_title'] as String,
      accessKey: json['access_key'] as String?,
      datafeedDescription: json['datafeed_description'] as String?,
    );

Map<String, dynamic> _$$DatasourceAddFeedEntityImplToJson(
        _$DatasourceAddFeedEntityImpl instance) =>
    <String, dynamic>{
      'datasource_id': instance.datasourceId,
      'datafeed_name': instance.datafeedName,
      'datafeedsource_id': instance.datafeedsourceId,
      'datafeed_source_unique_id': instance.datafeedSourceUniqueId,
      'datafeed_source_title': instance.datafeedSourceTitle,
      'access_key': instance.accessKey,
      'datafeed_description': instance.datafeedDescription,
    };
