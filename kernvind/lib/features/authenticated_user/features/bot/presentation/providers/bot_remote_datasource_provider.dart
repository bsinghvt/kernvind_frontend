import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/app_dio/dio_with_auth_header.dart';
import 'package:kernvind/features/authenticated_user/features/bot/data/datasource/bot_remote_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bot_remote_datasource_provider.g.dart';

@riverpod
BotRemoteDatasourceImpl botRemoteDatasource(Ref ref) {
  return BotRemoteDatasourceImpl(ref.watch(dioWithAuthHeaderProvider));
}
