// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatasourceDetailsEntityImpl _$$DatasourceDetailsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DatasourceDetailsEntityImpl(
      datasource: DatasourceListEntity.fromJson(
          json['datasource'] as Map<String, dynamic>),
      datafeeds: (json['datafeeds'] as List<dynamic>)
          .map((e) => DatasourceFeedEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatasourceDetailsEntityImplToJson(
        _$DatasourceDetailsEntityImpl instance) =>
    <String, dynamic>{
      'datasource': instance.datasource,
      'datafeeds': instance.datafeeds,
    };
