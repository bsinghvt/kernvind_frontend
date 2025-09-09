import 'package:freezed_annotation/freezed_annotation.dart';

part 'playground_token_entity.freezed.dart';
part 'playground_token_entity.g.dart';

@freezed
class PlaygroundTokenEntity with _$PlaygroundTokenEntity {
  factory PlaygroundTokenEntity({
    required String token,
  }) = _PlaygroundTokenEntity;

  factory PlaygroundTokenEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaygroundTokenEntityFromJson(json);
}
