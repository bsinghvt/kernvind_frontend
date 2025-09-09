// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'datasource_entity.freezed.dart';
part 'datasource_entity.g.dart';

List<DatasourceListEntity> listOfDatasources(List<dynamic> listData) =>
    List<DatasourceListEntity>.from(
        listData.map((x) => DatasourceListEntity.fromJson(x)));

@freezed
class DatasourceListEntity with _$DatasourceListEntity {
  factory DatasourceListEntity({
    @JsonKey(name: 'datasource_id') required int datasourceId,
    @JsonKey(name: 'created_by_user_id') required int createdByUserId,
    @JsonKey(name: 'datasource_name') required String datasourceName,
    @JsonKey(name: 'datasource_description') String? datasourceDescription,
    required DateTime created,
    required DateTime modified,
  }) = _DatasourceListEntity;

  factory DatasourceListEntity.fromJson(Map<String, dynamic> json) =>
      _$DatasourceListEntityFromJson(json);
}
