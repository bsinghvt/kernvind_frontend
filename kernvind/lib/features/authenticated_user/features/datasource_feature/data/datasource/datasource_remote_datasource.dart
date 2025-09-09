import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_add_feed_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_create_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_update_entity.dart';

abstract interface class DataSourceRemoteDataSource {
  Future<Either<FailureError, DatasourceCreateEntity>> createDatasource(
      {required DatasourceCreateEntity datasource});

  Future<Either<FailureError, List<DatasourceListEntity>>> listDatasources();

  Future<Either<FailureError, DatasourceDetailsEntity>> getDatasourceDetails(
      {required int datasourceId});

  Future<Either<FailureError, DatasourceDetailsEntity>>
      updateDatasourceNameAndDesc({required DatasourceUpdateEntity datasource});

  Future<Either<FailureError, DatasourceDetailsEntity>> addDatasourceFeed(
      {required DatasourceAddFeedEntity datasourceFeed});

  Future<Either<FailureError, DatasourceDetailsEntity>> deleteDatasourceFeed(
      {required int datafeedId});

  Future<Either<FailureError, SuccessMsg>> deleteDatasource(
      {required int datasourceId});
}

class DataSourceRemoteDataSourceImpl implements DataSourceRemoteDataSource {
  final Dio dio;

  DataSourceRemoteDataSourceImpl(this.dio);

  @override
  Future<Either<FailureError, DatasourceCreateEntity>> createDatasource(
      {required DatasourceCreateEntity datasource}) async {
    try {
      Response resp;
      resp = await dio.post(ConfigSingleton().dataSourceCreateUrl,
          data: datasource.toJson());
      return right(DatasourceCreateEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        return left(FailureError.fromJson(e.response!.data));
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, List<DatasourceListEntity>>>
      listDatasources() async {
    try {
      Response resp;
      resp = await dio.get(ConfigSingleton().dataSourceListUrl);
      return right(listOfDatasources(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError(error: e.toString()));
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>> getDatasourceDetails(
      {required int datasourceId}) async {
    try {
      Response resp;
      resp = await dio
          .get('${ConfigSingleton().dataSourceDetailsUrl}/$datasourceId');
      return right(DatasourceDetailsEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError(error: e.toString()));
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>>
      updateDatasourceNameAndDesc(
          {required DatasourceUpdateEntity datasource}) async {
    try {
      Response resp;
      resp = await dio.put(ConfigSingleton().dataSourceUpdateDescUrl,
          data: datasource.toJson());
      return right(DatasourceDetailsEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        return left(FailureError.fromJson(e.response!.data));
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, SuccessMsg>> deleteDatasource(
      {required int datasourceId}) async {
    try {
      Response resp;
      resp = await dio
          .delete('${ConfigSingleton().dataSourceDeleteUrl}/$datasourceId');
      return right(SuccessMsg.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        return left(FailureError.fromJson(e.response!.data));
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>> addDatasourceFeed(
      {required DatasourceAddFeedEntity datasourceFeed}) async {
    try {
      Response resp;
      resp = await dio.put(ConfigSingleton().dataSourceAddFeedUrl,
          data: datasourceFeed.toJson());
      return right(DatasourceDetailsEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        return left(FailureError.fromJson(e.response!.data));
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>> deleteDatasourceFeed(
      {required int datafeedId}) async {
    try {
      Response resp;
      resp = await dio
          .delete('${ConfigSingleton().dataSourceDeleteFeedUrl}/$datafeedId');
      return right(DatasourceDetailsEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        return left(FailureError.fromJson(e.response!.data));
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }
}
