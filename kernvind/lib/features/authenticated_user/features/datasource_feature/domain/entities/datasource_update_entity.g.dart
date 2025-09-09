// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_update_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatasourceUpdateEntityImpl _$$DatasourceUpdateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DatasourceUpdateEntityImpl(
      datasourceId: (json['datasource_id'] as num).toInt(),
      datasourceDescription: json['datasource_description'] as String?,
    );

Map<String, dynamic> _$$DatasourceUpdateEntityImplToJson(
        _$DatasourceUpdateEntityImpl instance) =>
    <String, dynamic>{
      'datasource_id': instance.datasourceId,
      'datasource_description': instance.datasourceDescription,
    };
