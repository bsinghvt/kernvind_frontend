import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/configuration/constants.dart';

import 'package:kernvind/core/theme/theme.dart';
import 'package:kernvind/routes/auto_route_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const secureStorage = FlutterSecureStorage();
  ConfigSingleton().setDevConfig();
  //setUrlStrategy(null);
  final refreshToken = await secureStorage.read(
      key: ConstantsSingleton().refreshTokenStorageKey);
  runApp(ProviderScope(
      child: MyApp(
    refreshToken: refreshToken,
  )));
}

class MyApp extends StatelessWidget {
  final String? refreshToken;
  const MyApp({super.key, this.refreshToken});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    return Consumer(
      builder: (context, ref, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Kernvind',
          theme: brightness == Brightness.light
              ? AppTheme.lightThemeMode
              : AppTheme.darkThemeMode,
          routerConfig: AppRouter(refreshToken: refreshToken).config(),
        );
      },
    );
  }
}
