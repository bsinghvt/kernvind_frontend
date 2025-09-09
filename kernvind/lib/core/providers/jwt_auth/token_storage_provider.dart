import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/configuration/constants.dart';
import 'package:kernvind/core/providers/secure_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kernvind/core/entities/JWT/token_response_entity.dart';
part 'token_storage_provider.g.dart';

@riverpod
Future<void> tokenStorage(Ref ref,
    {required TokenResponseEntity tokenResp}) async {
  final storage = ref.watch(secureStorageProvider);
  final token = tokenResp.token;
  final refreshToken = tokenResp.refreshToken;
  await storage.storeValue(
      key: ConstantsSingleton().tokenStorageKey, value: token);
  await storage.storeValue(
      key: ConstantsSingleton().refreshTokenStorageKey, value: refreshToken);
  //ref.invalidate(authTokenStateNotifierProvider);
}

@riverpod
Future<void> deleteTokens(Ref ref) async {
  final storage = ref.watch(secureStorageProvider);
  await storage.deleteKey(key: ConstantsSingleton().tokenStorageKey);
  await storage.deleteKey(key: ConstantsSingleton().refreshTokenStorageKey);
}

@riverpod
Future<void> newTokenStorage(Ref ref, {required String newToken}) async {
  // ref.invalidate(getStorageAccessTokenValueProvider);
  final storage = ref.watch(secureStorageProvider);
  await storage.storeValue(
      key: ConstantsSingleton().tokenStorageKey, value: newToken);
}

@riverpod
Future<String?> getStorageAccessTokenValue(Ref ref) async {
  String? value;
  final storage = ref.watch(secureStorageProvider);
  final valueOrError =
      await storage.getValue(key: ConstantsSingleton().tokenStorageKey);
  valueOrError.fold((error) => value = 'Error', (token) => value = token);
  return value;
}

@riverpod
Future<String?> getStorageRefreshTokenValue(Ref ref) async {
  String? value;
  final storage = ref.watch(secureStorageProvider);
  final valueOrError =
      await storage.getValue(key: ConstantsSingleton().refreshTokenStorageKey);
  valueOrError.fold((error) => value = 'Error', (token) => value = token);
  return value;
}
