import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:kernvind/core/entities/JWT/access_token_decode_entity.dart';
import 'package:kernvind/core/providers/jwt_auth/token_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'jwt_token_parse.g.dart';

@riverpod
Future<AccessTokenDecodeState> accessTokenDecode(Ref ref) async {
  final authToken = await ref.watch(getStorageAccessTokenValueProvider.future);
  if (authToken != null) {
    return DecodeTokenState(
        decodedToken:
            AccessTokenDecodeEntity.fromJson(Jwt.parseJwt(authToken)));
  } else {
    return const NoAccessTokenState();
  }
}

sealed class AccessTokenDecodeState {
  const AccessTokenDecodeState();
}

class NoAccessTokenState extends AccessTokenDecodeState {
  const NoAccessTokenState();
}

class DecodeTokenState extends AccessTokenDecodeState {
  final AccessTokenDecodeEntity decodedToken;

  DecodeTokenState({required this.decodedToken});
}
