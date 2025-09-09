import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dio_with_auth_header.g.dart';

@riverpod
Dio dioWithAuthHeader(Ref ref) {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest:
          (RequestOptions options, RequestInterceptorHandler handler) async {
        final tokenState =
            await ref.read(authTokenStateNotifierProvider.future);
        String token = '';
        if (tokenState is AvailableAccessTokenState) {
          token = tokenState.token;
          if (Jwt.isExpired(token)) {
            await ref
                .read(authTokenStateNotifierProvider.notifier)
                .tokenRefresh();

            // ref.invalidate(authTokenStateNotifierProvider);
            final newTokenState =
                await ref.read(authTokenStateNotifierProvider.future);

            if (newTokenState is AvailableAccessTokenState) {
              token = newTokenState.token;
            } else {
              return;
            }
          }
        } else {
          return;
        }
        options.headers['authorization'] = 'Bearer $token';
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        // Do something with response data.
        // If you want to reject the request with a error message,
        // you can reject a `DioException` object using `handler.reject(dioError)`.
        return handler.next(response);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        // Do something with response error.
        // If you want to resolve the request with some custom data,
        // you can resolve a `Response` object using `handler.resolve(response)`.
        return handler.next(error);
      },
    ),
  );
  return dio;
}
