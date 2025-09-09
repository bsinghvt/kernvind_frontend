// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_create_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatasourceCreateEntityImpl _$$DatasourceCreateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DatasourceCreateEntityImpl(
      createdByUserId: (json['created_by_user_id'] as num).toInt(),
      createdByName: json['created_by_name'] as String,
      datasourceName: json['datasource_name'] as String,
      datasourceDescription: json['datasource_description'] as String?,
      datasourceFeed: DatasourceFeedEntity.fromJson(
          json['datasource_feed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatasourceCreateEntityImplToJson(
        _$DatasourceCreateEntityImpl instance) =>
    <String, dynamic>{
      'created_by_user_id': instance.createdByUserId,
      'created_by_name': instance.createdByName,
      'datasource_name': instance.datasourceName,
      'datasource_description': instance.datasourceDescription,
      'datasource_feed': instance.datasourceFeed.toJson(),
    };
