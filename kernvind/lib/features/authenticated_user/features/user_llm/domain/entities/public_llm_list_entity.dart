// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_llm_list_entity.freezed.dart';
part 'public_llm_list_entity.g.dart';

List<PublicLlmListEntity> listOfLlms(List<dynamic> listData) =>
    List<PublicLlmListEntity>.from(
        listData.map((x) => PublicLlmListEntity.fromJson(x)));

@freezed
class PublicLlmListEntity with _$PublicLlmListEntity {
  factory PublicLlmListEntity({
    @JsonKey(name: 'llm_name') required String llmName,
    @JsonKey(name: 'llmmodeltype_name') required String llmmodeltypeName,
    required DateTime created,
    required DateTime modified,
  }) = _PublicLlmListEntity;

  factory PublicLlmListEntity.fromJson(Map<String, dynamic> json) =>
      _$PublicLlmListEntityFromJson(json);
}
