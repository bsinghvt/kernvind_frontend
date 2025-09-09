import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/configuration/constants.dart';

import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';
import 'package:kernvind/core/providers/secure_storage_provider.dart';
import 'package:kernvind/features/home/domain/entities/google_sign_in_id_token_entity.dart';
import 'package:kernvind/features/home/presentaion/provider/google_auth/google_auth_state.dart';
import 'package:kernvind/features/home/presentaion/provider/social_auth_datasource_and_repo_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'google_sign_in_provider.g.dart';

const List<String> scopes = <String>[
  'https://www.googleapis.com/auth/userinfo.profile',
  'https://www.googleapis.com/auth/userinfo.email',
  'openid',
];
@riverpod
GoogleSignIn googleSignIn(Ref ref) {
  if (kIsWeb) {
    return GoogleSignIn(
      scopes: scopes,
      clientId:
          '450752284339-ulgvunhkpo3k392irbe4e7ovko4gc4j8.apps.googleusercontent.com',
      forceCodeForRefreshToken: true,
    );
  } else {
    if (Platform.isAndroid) {
      return GoogleSignIn(
        scopes: scopes,
        clientId: ConfigSingleton().androidGoogleSignInWebClientID,
        forceCodeForRefreshToken: true,
      );
    } else {
      return GoogleSignIn(
        scopes: scopes,
        forceCodeForRefreshToken: true,
      );
    }
  }
}

@riverpod
class GoogleAuth extends _$GoogleAuth {
  StreamSubscription<GoogleSignInAccount?>? _sub;
  @override
  GoogleAuthState build() {
    if (_sub != null) {
      _sub?.cancel();
    }
    ref.onDispose(() {
      _sub?.cancel();
    });
    state = const GoogleAuthInitial();

    final googleSignIn = ref.watch(googleSignInProvider);

    _sub = googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? googleSignInAccount) async {
      if (googleSignInAccount == null) {
        state = const GoogleAuthStateSignOut();
        return;
      }
      if (kIsWeb) {
        _postIdToken(platform: 'web', googleSignInAccount: googleSignInAccount);
      } else {
        if (Platform.isAndroid) {
          _postIdToken(
              platform: 'android', googleSignInAccount: googleSignInAccount);
        } else if (Platform.isIOS || Platform.isMacOS) {
          _postIdToken(
              platform: 'ios', googleSignInAccount: googleSignInAccount);
        } else {
          state = GoogleAuthFailure(FailureError(
              error:
                  'Google sign in is not supported on your device. Please use other sign in method'));
        }
      }
    });
    // googleSignIn.signInSilently();
    return state;
  }

  Future<void> _postIdToken(
      {required String platform,
      required GoogleSignInAccount googleSignInAccount}) async {
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final secureStorage = ref.read(secureStorageProvider);
    if (googleSignInAuthentication.idToken != null) {
      final idToken = googleSignInAuthentication.idToken!;
      final socialAuthRepo = ref.read(socialAuthRepositoryUseCaseImplProvider);
      final idTokenEntity =
          GoogleSignInIdTokenEntity(idToken: idToken, platform: platform);
      final tokenOrFailure =
          await socialAuthRepo.googleSignInUser(idTokenEntity: idTokenEntity);
      tokenOrFailure.fold((error) => state = GoogleAuthFailure(error),
          (token) async {
        await ref
            .read(authTokenStateNotifierProvider.notifier)
            .storeTokens(tokenResp: token);

        await secureStorage.storeValue(
            key: ConstantsSingleton().isGoogleSignInKey,
            value: ConstantsSingleton().isGoogleSignInValue);
        state = GoogleAuthScopeAndSignInSuccess(
            currentUser: googleSignInAccount, isAuthorize: true);
      });
    } else {
      state = GoogleAuthFailure(
          FailureError(error: 'Google token auth failed. Please try again'));
    }
  }

  Future<void> handleGoogleSignIn() async {
    final googleSignIn = ref.read(googleSignInProvider);
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        state = const GoogleAuthLoading();
      } else {
        state = GoogleAuthFailure(FailureError(error: 'Google sign in failed'));
      }
    } catch (error) {
      state = GoogleAuthFailure(FailureError(error: error.toString()));
    }
  }
}
