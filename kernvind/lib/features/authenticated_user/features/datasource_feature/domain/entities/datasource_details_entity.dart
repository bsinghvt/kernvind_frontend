import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_feed_entity.dart';

part 'datasource_details_entity.freezed.dart';
part 'datasource_details_entity.g.dart';

@freezed
class DatasourceDetailsEntity with _$DatasourceDetailsEntity {
  factory DatasourceDetailsEntity({
    required DatasourceListEntity datasource,
    required List<DatasourceFeedEntity> datafeeds,
  }) = _DatasourceDetailsEntity;

  factory DatasourceDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$DatasourceDetailsEntityFromJson(json);
}
