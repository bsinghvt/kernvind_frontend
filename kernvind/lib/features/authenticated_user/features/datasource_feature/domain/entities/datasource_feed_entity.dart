// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'datasource_feed_entity.freezed.dart';
part 'datasource_feed_entity.g.dart';

@freezed
class DatasourceFeedEntity with _$DatasourceFeedEntity {
  factory DatasourceFeedEntity({
    @JsonKey(name: 'datafeed_id') int? datafeedId,
    @JsonKey(name: 'created_by_user_id') required int createdByUserId,
    @JsonKey(name: 'created_by_name') required String createdByName,
    @JsonKey(name: 'datafeed_name') required String datafeedName,
    @JsonKey(name: 'datafeedsource_id') required String datafeedsourceId,
    @JsonKey(name: 'datafeed_source_unique_id')
    required String datafeedSourceUniqueId,
    @JsonKey(name: 'datafeed_description') String? datafeedDescription,
    @JsonKey(name: 'datafeed_source_title') required String datafeedSourceTitle,
    @JsonKey(name: 'access_key') String? accessKey,
    @JsonKey(name: 'datafeedloadstatus_id') String? datafeedLoadStatus,
    DateTime? created,
    DateTime? modified,
  }) = _DatasourceFeedEntity;

  factory DatasourceFeedEntity.fromJson(Map<String, dynamic> json) =>
      _$DatasourceFeedEntityFromJson(json);
}
