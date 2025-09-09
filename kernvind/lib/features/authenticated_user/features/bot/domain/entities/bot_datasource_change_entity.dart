// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_datasource_change_entity.freezed.dart';
part 'bot_datasource_change_entity.g.dart';

@freezed
class BotDatasourceChangeEntity with _$BotDatasourceChangeEntity {
  factory BotDatasourceChangeEntity(
          {@JsonKey(name: 'bot_id') required int botId,
          @JsonKey(name: 'datasource_id') required int datasourceId}) =
      _BotDatasourceChangeEntity;

  factory BotDatasourceChangeEntity.fromJson(Map<String, dynamic> json) =>
      _$BotDatasourceChangeEntityFromJson(json);
}
