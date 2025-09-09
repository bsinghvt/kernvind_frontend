import 'package:jwt_decode/jwt_decode.dart';
import 'package:kernvind/core/configuration/constants.dart';
import 'package:kernvind/core/entities/JWT/token_response_entity.dart';

import 'package:kernvind/core/providers/jwt_auth/auth_token_state.dart';
import 'package:kernvind/core/providers/jwt_auth/refresh_token_remote_provider.dart';
import 'package:kernvind/core/providers/jwt_auth/token_storage_provider.dart';
import 'package:kernvind/core/providers/secure_storage_provider.dart';
import 'package:kernvind/features/home/presentaion/provider/google_auth/google_sign_in_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_token_state_provider.g.dart';

@riverpod
class AuthTokenStateNotifier extends _$AuthTokenStateNotifier {
  @override
  Future<AuthTokenState> build() async {
    String? token = await ref.watch(getStorageAccessTokenValueProvider.future);
    if (token != null) {
      return AvailableAccessTokenState(token: token);
    }
    return NoAccessTokenState();
  }

  Future<void> logout() async {
    final secureStorage = ref.read(secureStorageProvider);
    final googleSignIn = ref.read(googleSignInProvider);
    final isGoogleSignIn = await secureStorage.getValue(
        key: ConstantsSingleton().isGoogleSignInKey);
    isGoogleSignIn.fold((error) {}, (val) async {
      if (val != null) {
        await googleSignIn.disconnect();
        await googleSignIn.signOut();
        await secureStorage.deleteKey(
            key: ConstantsSingleton().isGoogleSignInKey);
      }
    });
    await ref.read(deleteTokensProvider.future);
    state = AsyncData(NoAccessTokenState());
  }

  Future<void> tokenRefresh() async {
    final refreshTokenDataSource =
        ref.read(refreshTokenRemoteDataSourceImplProvider);
    final refreshTkn =
        await ref.read(getStorageRefreshTokenValueProvider.future);
    if (refreshTkn == null) {
      state = AsyncData(NoAccessTokenState());
      return;
    }
    if (Jwt.isExpired(refreshTkn)) {
      await ref.read(deleteTokensProvider.future);
      state = AsyncData(RefreshTokenExpiredState());
      return;
    }

    final newTokenOrError =
        await refreshTokenDataSource.refreshToken(refreshToken: refreshTkn);
    await newTokenOrError.fold((error) async {
      await ref.read(deleteTokensProvider.future);
      state = AsyncData(RefreshTokenFailureState(error));
    }, (tkn) async {
      await ref.read(newTokenStorageProvider(newToken: tkn.token).future);
      state = AsyncData(AvailableAccessTokenState(token: tkn.token));
    });
  }

  Future<void> storeTokens({required TokenResponseEntity tokenResp}) async {
    final storage = ref.read(secureStorageProvider);
    final token = tokenResp.token;
    final refreshToken = tokenResp.refreshToken;
    await storage.storeValue(
        key: ConstantsSingleton().tokenStorageKey, value: token);
    await storage.storeValue(
        key: ConstantsSingleton().refreshTokenStorageKey, value: refreshToken);
    state = AsyncData(AvailableAccessTokenState(token: token));
  }
}
