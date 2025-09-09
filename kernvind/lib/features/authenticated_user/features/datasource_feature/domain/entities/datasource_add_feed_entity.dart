// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'datasource_add_feed_entity.freezed.dart';
part 'datasource_add_feed_entity.g.dart';

@freezed
class DatasourceAddFeedEntity with _$DatasourceAddFeedEntity {
  factory DatasourceAddFeedEntity({
    @JsonKey(name: 'datasource_id') required int datasourceId,
    @JsonKey(name: 'datafeed_name') required String datafeedName,
    @JsonKey(name: 'datafeedsource_id') required String datafeedsourceId,
    @JsonKey(name: 'datafeed_source_unique_id')
    required String datafeedSourceUniqueId,
    @JsonKey(name: 'datafeed_source_title') required String datafeedSourceTitle,
    @JsonKey(name: 'access_key') String? accessKey,
    @JsonKey(name: 'datafeed_description') String? datafeedDescription,
  }) = _DatasourceAddFeedEntity;

  factory DatasourceAddFeedEntity.fromJson(Map<String, dynamic> json) =>
      _$DatasourceAddFeedEntityFromJson(json);
}
