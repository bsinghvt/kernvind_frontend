// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_feed_entity.dart';

part 'datasource_create_entity.freezed.dart';
part 'datasource_create_entity.g.dart';

@freezed
class DatasourceCreateEntity with _$DatasourceCreateEntity {
  @JsonSerializable(explicitToJson: true)
  factory DatasourceCreateEntity({
    @JsonKey(name: 'created_by_user_id') required int createdByUserId,
    @JsonKey(name: 'created_by_name') required String createdByName,
    @JsonKey(name: 'datasource_name') required String datasourceName,
    @JsonKey(name: 'datasource_description') String? datasourceDescription,
    @JsonKey(name: 'datasource_feed')
    required DatasourceFeedEntity datasourceFeed,
  }) = _DatasourceCreateEntity;

  factory DatasourceCreateEntity.fromJson(Map<String, dynamic> json) =>
      _$DatasourceCreateEntityFromJson(json);
}
