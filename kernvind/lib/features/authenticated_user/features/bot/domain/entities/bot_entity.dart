// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_entity.freezed.dart';
part 'bot_entity.g.dart';

List<BotEntity> listOfBots(List<dynamic> listData) =>
    List<BotEntity>.from(listData.map((x) => BotEntity.fromJson(x)));

@freezed
class BotEntity with _$BotEntity {
  factory BotEntity({
    @JsonKey(name: 'bot_id') int? botId,
    @JsonKey(name: 'user_llm_id') int? userLlmId,
    @JsonKey(name: 'llm_name') String? llmName,
    @JsonKey(name: 'llm_type_name') String? llmTypeName,
    @JsonKey(name: 'user_llm_name') String? userLlmName,
    @JsonKey(name: 'user_llm_description') String? userLlmDescription,
    @JsonKey(name: 'bot_name') required String botName,
    @JsonKey(name: 'bot_description') String? botDescription,
    @JsonKey(name: 'created_by_user_id') required int createdByUserId,
    @JsonKey(name: 'created_by_name') required String createdByName,
    @JsonKey(name: 'datasource_id') int? datasourceId,
    @JsonKey(name: 'datasource_name') String? datasourceName,
    @JsonKey(name: 'datasource_description') String? datasourceDesc,
    @JsonKey(name: 'is_owner') bool? isOwner,
    @JsonKey(name: 'can_add_users') required bool canAddUsers,
    @JsonKey(name: 'can_change_datasource') required bool canChangeDatasource,
    @JsonKey(name: 'can_see_datasource') required bool canSeeDatasource,
    @JsonKey(name: 'can_see_datasourcefeed') required bool canSeeDatasourcefeed,
    @JsonKey(name: 'can_change_datasourcefeed')
    required bool canChangeDatasourcefeed,
    @JsonKey(name: 'can_see_llm') required bool canSeeLlm,
    @JsonKey(name: 'can_change_llm') required bool canChangeLlm,
    DateTime? created,
    DateTime? modified,
  }) = _BotEntity;

  factory BotEntity.fromJson(Map<String, dynamic> json) =>
      _$BotEntityFromJson(json);
}
