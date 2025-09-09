import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/features/authenticated_user/features/bot/data/repositories/bot_repository_impl.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_remote_datasource_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bot_repository_provider.g.dart';

@riverpod
BotRepositoryImpl botRepository(Ref ref) {
  return BotRepositoryImpl(
    botRemoteDatasourceImpl: ref.watch(botRemoteDatasourceProvider),
  );
}
