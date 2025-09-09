import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/app_dio/dio_with_auth_header.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/data/repositories/user_llm_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasource/user_llm_remote_datasource.dart';

part 'user_llm_repo_provider.g.dart';

@riverpod
UserLlmRemoteDatasourceImpl userLlmRemoteDatasource(Ref ref) {
  return UserLlmRemoteDatasourceImpl(ref.watch(dioWithAuthHeaderProvider));
}

@riverpod
UserLlmRepoImpl userLlmRepo(Ref ref) {
  return UserLlmRepoImpl(
    ref.watch(userLlmRemoteDatasourceProvider),
  );
}
