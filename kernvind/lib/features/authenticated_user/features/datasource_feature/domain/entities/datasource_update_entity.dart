// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'datasource_update_entity.freezed.dart';
part 'datasource_update_entity.g.dart';

@freezed
class DatasourceUpdateEntity with _$DatasourceUpdateEntity {
  factory DatasourceUpdateEntity({
    @JsonKey(name: 'datasource_id') required int datasourceId,
    @JsonKey(name: 'datasource_description') String? datasourceDescription,
  }) = _DatasourceUpdateEntity;

  factory DatasourceUpdateEntity.fromJson(Map<String, dynamic> json) =>
      _$DatasourceUpdateEntityFromJson(json);
}
