import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/app_dio/dio_provider.dart';
import 'package:kernvind/features/playground/data/datasources/playground_setup_remote_datasource.dart';
import 'package:kernvind/features/playground/data/repositories/playground_setup_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'playground_setup_repo_provider.g.dart';

@riverpod
PlayGroundSetupRemoteDatasourceImpl playGroundSetupRemoteDatasourceImpl(
    Ref ref) {
  return PlayGroundSetupRemoteDatasourceImpl(ref.watch(dioProvider));
}

@riverpod
PlaygroundSetupRepoImpl playgroundSetupRepoImpl(Ref ref) {
  return PlaygroundSetupRepoImpl(
    ref.watch(playGroundSetupRemoteDatasourceImplProvider),
  );
}
