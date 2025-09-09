import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/app_dio/dio_provider.dart';
import 'package:kernvind/features/home/data/datasources/social_auth_remote_datasource.dart';
import 'package:kernvind/features/home/data/repositories/social_auth_repository_use_case_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'social_auth_datasource_and_repo_provider.g.dart';

@riverpod
SocialAuthRemoteDatasourceImpl socialAuthRemoteDatasourceImpl(Ref ref) {
  return SocialAuthRemoteDatasourceImpl(ref.watch(dioProvider));
}

@riverpod
SocialAuthRepositoryUseCaseImpl socialAuthRepositoryUseCaseImpl(Ref ref) {
  return SocialAuthRepositoryUseCaseImpl(
      socialAuthRemoteDatasourceImpl:
          ref.watch(socialAuthRemoteDatasourceImplProvider));
}
