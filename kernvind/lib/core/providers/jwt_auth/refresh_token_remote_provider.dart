import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/data/datasources/refresh_token_remote_data_source.dart';
import 'package:kernvind/core/providers/app_dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'refresh_token_remote_provider.g.dart';

@riverpod
RefreshTokenRemoteDataSourceImpl refreshTokenRemoteDataSourceImpl(Ref ref) {
  return RefreshTokenRemoteDataSourceImpl(dio: ref.watch(dioProvider));
}
