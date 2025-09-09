import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/app_dio/dio_with_auth_header.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/data/datasource/datasource_remote_datasource.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/data/repositories/datasource_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'datasource_feature_datasource_provider.g.dart';

@riverpod
DataSourceRemoteDataSourceImpl dataSourceRemoteDataSourceImpl(Ref ref) {
  return DataSourceRemoteDataSourceImpl(ref.watch(dioWithAuthHeaderProvider));
}

@riverpod
DataSourceRepositoryImpl dataSourceRepositoryImpl(Ref ref) {
  return DataSourceRepositoryImpl(
      dataSourceRemoteDataSourceImpl:
          ref.watch(dataSourceRemoteDataSourceImplProvider));
}
