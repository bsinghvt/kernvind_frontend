// ignore_for_file: empty_catches

import 'package:auto_route/auto_route.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:kernvind/core/configuration/constants.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

class AutoRouteAuthGuard extends AutoRouteGuard {
  AutoRouteAuthGuard();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    const secureStorage = FlutterSecureStorage();
    final refreshToken = await secureStorage.read(
        key: ConstantsSingleton().refreshTokenStorageKey);
    bool isTokenExpired = true;
    if (refreshToken != null) {
      try {
        isTokenExpired = Jwt.isExpired(refreshToken);
      } catch (e) {}
    }

    if (isTokenExpired == false) {
      resolver.next(true);
    } else {
      //  await ref.read(authTokenStateNotifierProvider.notifier).tokenRefresh();
      router.replaceAll([const HomeRoute()], updateExistingRoutes: false);
    }
  }
}
