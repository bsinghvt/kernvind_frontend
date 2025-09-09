// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatasourceListEntityImpl _$$DatasourceListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DatasourceListEntityImpl(
      datasourceId: (json['datasource_id'] as num).toInt(),
      createdByUserId: (json['created_by_user_id'] as num).toInt(),
      datasourceName: json['datasource_name'] as String,
      datasourceDescription: json['datasource_description'] as String?,
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$DatasourceListEntityImplToJson(
        _$DatasourceListEntityImpl instance) =>
    <String, dynamic>{
      'datasource_id': instance.datasourceId,
      'created_by_user_id': instance.createdByUserId,
      'datasource_name': instance.datasourceName,
      'datasource_description': instance.datasourceDescription,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
