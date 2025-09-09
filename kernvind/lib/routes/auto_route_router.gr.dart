// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:flutter/material.dart' as _i23;
import 'package:kernvind/features/auth/presentation/pages/login_page.dart'
    as _i14;
import 'package:kernvind/features/auth/presentation/pages/signup_page.dart'
    as _i18;
import 'package:kernvind/features/authenticated_user/features/bot/presentation/pages/bot_chat_page.dart'
    as _i2;
import 'package:kernvind/features/authenticated_user/features/bot/presentation/pages/bot_create_page.dart'
    as _i3;
import 'package:kernvind/features/authenticated_user/features/bot/presentation/pages/bot_detail_page.dart'
    as _i4;
import 'package:kernvind/features/authenticated_user/features/bot/presentation/pages/bot_list_page.dart'
    as _i5;
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/pages/datasource_create_page.dart'
    as _i6;
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/pages/datasource_details_page.dart'
    as _i7;
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/pages/datasource_list_page.dart'
    as _i8;
import 'package:kernvind/features/authenticated_user/features/main/presentation/pages/auth_user_navigation_page.dart'
    as _i1;
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/pages/get_chat_gpt_api_key_page.dart'
    as _i10;
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/pages/llm_list_page.dart'
    as _i13;
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/pages/ollama_setup_howto_page.dart'
    as _i15;
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/pages/user_llm_create_page.dart'
    as _i20;
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/pages/user_llm_details_page.dart'
    as _i21;
import 'package:kernvind/features/home/presentaion/pages/home_page.dart'
    as _i11;
import 'package:kernvind/features/landing/presentation/pages/disclaimer_page.dart'
    as _i9;
import 'package:kernvind/features/landing/presentation/pages/landing_page.dart'
    as _i12;
import 'package:kernvind/features/playground/domain/entities/playground_llm_config_entity.dart'
    as _i24;
import 'package:kernvind/features/playground/presentation/pages/playground_chat_page.dart'
    as _i16;
import 'package:kernvind/features/playground/presentation/pages/playground_setup_page.dart'
    as _i17;
import 'package:kernvind/features/subscription/presentation/pages/subscription_plans_page.dart'
    as _i19;

/// generated route for
/// [_i1.AuthUserNavigationPage]
class AuthUserNavigationRoute extends _i22.PageRouteInfo<void> {
  const AuthUserNavigationRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AuthUserNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthUserNavigationRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthUserNavigationPage();
    },
  );
}

/// generated route for
/// [_i2.BotChatPage]
class BotChatRoute extends _i22.PageRouteInfo<BotChatRouteArgs> {
  BotChatRoute({
    _i23.Key? key,
    required int botId,
    required String botName,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          BotChatRoute.name,
          args: BotChatRouteArgs(
            key: key,
            botId: botId,
            botName: botName,
          ),
          rawPathParams: {
            'id': botId,
            'name': botName,
          },
          initialChildren: children,
        );

  static const String name = 'BotChatRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BotChatRouteArgs>(
          orElse: () => BotChatRouteArgs(
                botId: pathParams.getInt('id'),
                botName: pathParams.getString('name'),
              ));
      return _i2.BotChatPage(
        key: args.key,
        botId: args.botId,
        botName: args.botName,
      );
    },
  );
}

class BotChatRouteArgs {
  const BotChatRouteArgs({
    this.key,
    required this.botId,
    required this.botName,
  });

  final _i23.Key? key;

  final int botId;

  final String botName;

  @override
  String toString() {
    return 'BotChatRouteArgs{key: $key, botId: $botId, botName: $botName}';
  }
}

/// generated route for
/// [_i3.BotCreatePage]
class BotCreateRoute extends _i22.PageRouteInfo<void> {
  const BotCreateRoute({List<_i22.PageRouteInfo>? children})
      : super(
          BotCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'BotCreateRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i3.BotCreatePage();
    },
  );
}

/// generated route for
/// [_i4.BotDetailPage]
class BotDetailRoute extends _i22.PageRouteInfo<BotDetailRouteArgs> {
  BotDetailRoute({
    _i23.Key? key,
    required int botId,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          BotDetailRoute.name,
          args: BotDetailRouteArgs(
            key: key,
            botId: botId,
          ),
          rawPathParams: {'id': botId},
          initialChildren: children,
        );

  static const String name = 'BotDetailRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BotDetailRouteArgs>(
          orElse: () => BotDetailRouteArgs(botId: pathParams.getInt('id')));
      return _i4.BotDetailPage(
        key: args.key,
        botId: args.botId,
      );
    },
  );
}

class BotDetailRouteArgs {
  const BotDetailRouteArgs({
    this.key,
    required this.botId,
  });

  final _i23.Key? key;

  final int botId;

  @override
  String toString() {
    return 'BotDetailRouteArgs{key: $key, botId: $botId}';
  }
}

/// generated route for
/// [_i5.BotListPage]
class BotListRoute extends _i22.PageRouteInfo<void> {
  const BotListRoute({List<_i22.PageRouteInfo>? children})
      : super(
          BotListRoute.name,
          initialChildren: children,
        );

  static const String name = 'BotListRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i5.BotListPage();
    },
  );
}

/// generated route for
/// [_i6.DatasourceCreatePage]
class DatasourceCreateRoute extends _i22.PageRouteInfo<void> {
  const DatasourceCreateRoute({List<_i22.PageRouteInfo>? children})
      : super(
          DatasourceCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'DatasourceCreateRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i6.DatasourceCreatePage();
    },
  );
}

/// generated route for
/// [_i7.DatasourceDetailsPage]
class DatasourceDetailsRoute
    extends _i22.PageRouteInfo<DatasourceDetailsRouteArgs> {
  DatasourceDetailsRoute({
    _i23.Key? key,
    required int datasourceId,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          DatasourceDetailsRoute.name,
          args: DatasourceDetailsRouteArgs(
            key: key,
            datasourceId: datasourceId,
          ),
          rawPathParams: {'id': datasourceId},
          initialChildren: children,
        );

  static const String name = 'DatasourceDetailsRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DatasourceDetailsRouteArgs>(
          orElse: () => DatasourceDetailsRouteArgs(
              datasourceId: pathParams.getInt('id')));
      return _i7.DatasourceDetailsPage(
        key: args.key,
        datasourceId: args.datasourceId,
      );
    },
  );
}

class DatasourceDetailsRouteArgs {
  const DatasourceDetailsRouteArgs({
    this.key,
    required this.datasourceId,
  });

  final _i23.Key? key;

  final int datasourceId;

  @override
  String toString() {
    return 'DatasourceDetailsRouteArgs{key: $key, datasourceId: $datasourceId}';
  }
}

/// generated route for
/// [_i8.DatasourceListPage]
class DatasourceListRoute extends _i22.PageRouteInfo<void> {
  const DatasourceListRoute({List<_i22.PageRouteInfo>? children})
      : super(
          DatasourceListRoute.name,
          initialChildren: children,
        );

  static const String name = 'DatasourceListRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i8.DatasourceListPage();
    },
  );
}

/// generated route for
/// [_i9.DisclaimerPage]
class DisclaimerRoute extends _i22.PageRouteInfo<void> {
  const DisclaimerRoute({List<_i22.PageRouteInfo>? children})
      : super(
          DisclaimerRoute.name,
          initialChildren: children,
        );

  static const String name = 'DisclaimerRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i9.DisclaimerPage();
    },
  );
}

/// generated route for
/// [_i10.GetChatGptApiKeyPage]
class GetChatGptApiKeyRoute extends _i22.PageRouteInfo<void> {
  const GetChatGptApiKeyRoute({List<_i22.PageRouteInfo>? children})
      : super(
          GetChatGptApiKeyRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetChatGptApiKeyRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i10.GetChatGptApiKeyPage();
    },
  );
}

/// generated route for
/// [_i11.HomePage]
class HomeRoute extends _i22.PageRouteInfo<void> {
  const HomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i11.HomePage();
    },
  );
}

/// generated route for
/// [_i12.LandingPage]
class LandingRoute extends _i22.PageRouteInfo<void> {
  const LandingRoute({List<_i22.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i12.LandingPage();
    },
  );
}

/// generated route for
/// [_i13.LlmListPage]
class LlmListRoute extends _i22.PageRouteInfo<void> {
  const LlmListRoute({List<_i22.PageRouteInfo>? children})
      : super(
          LlmListRoute.name,
          initialChildren: children,
        );

  static const String name = 'LlmListRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i13.LlmListPage();
    },
  );
}

/// generated route for
/// [_i14.LoginPage]
class LoginRoute extends _i22.PageRouteInfo<void> {
  const LoginRoute({List<_i22.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i14.LoginPage();
    },
  );
}

/// generated route for
/// [_i15.OllamaSetupHowtoPage]
class OllamaSetupHowtoRoute extends _i22.PageRouteInfo<void> {
  const OllamaSetupHowtoRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OllamaSetupHowtoRoute.name,
          initialChildren: children,
        );

  static const String name = 'OllamaSetupHowtoRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i15.OllamaSetupHowtoPage();
    },
  );
}

/// generated route for
/// [_i16.PlaygroundChatPage]
class PlaygroundChatRoute extends _i22.PageRouteInfo<PlaygroundChatRouteArgs> {
  PlaygroundChatRoute({
    _i23.Key? key,
    String? token,
    String? botId,
    _i24.PlaygroundLlmConfigEntity? llmConfig,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          PlaygroundChatRoute.name,
          args: PlaygroundChatRouteArgs(
            key: key,
            token: token,
            botId: botId,
            llmConfig: llmConfig,
          ),
          initialChildren: children,
        );

  static const String name = 'PlaygroundChatRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlaygroundChatRouteArgs>(
          orElse: () => const PlaygroundChatRouteArgs());
      return _i16.PlaygroundChatPage(
        key: args.key,
        token: args.token,
        botId: args.botId,
        llmConfig: args.llmConfig,
      );
    },
  );
}

class PlaygroundChatRouteArgs {
  const PlaygroundChatRouteArgs({
    this.key,
    this.token,
    this.botId,
    this.llmConfig,
  });

  final _i23.Key? key;

  final String? token;

  final String? botId;

  final _i24.PlaygroundLlmConfigEntity? llmConfig;

  @override
  String toString() {
    return 'PlaygroundChatRouteArgs{key: $key, token: $token, botId: $botId, llmConfig: $llmConfig}';
  }
}

/// generated route for
/// [_i17.PlaygroundSetupPage]
class PlaygroundSetupRoute extends _i22.PageRouteInfo<void> {
  const PlaygroundSetupRoute({List<_i22.PageRouteInfo>? children})
      : super(
          PlaygroundSetupRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaygroundSetupRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i17.PlaygroundSetupPage();
    },
  );
}

/// generated route for
/// [_i18.SignUpPage]
class SignUpRoute extends _i22.PageRouteInfo<void> {
  const SignUpRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i18.SignUpPage();
    },
  );
}

/// generated route for
/// [_i19.SubscriptionPlansPage]
class SubscriptionPlansRoute extends _i22.PageRouteInfo<void> {
  const SubscriptionPlansRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SubscriptionPlansRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionPlansRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i19.SubscriptionPlansPage();
    },
  );
}

/// generated route for
/// [_i20.UserLlmCreatePage]
class UserLlmCreateRoute extends _i22.PageRouteInfo<void> {
  const UserLlmCreateRoute({List<_i22.PageRouteInfo>? children})
      : super(
          UserLlmCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserLlmCreateRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      return const _i20.UserLlmCreatePage();
    },
  );
}

/// generated route for
/// [_i21.UserLlmDetailsPage]
class UserLlmDetailsRoute extends _i22.PageRouteInfo<UserLlmDetailsRouteArgs> {
  UserLlmDetailsRoute({
    _i23.Key? key,
    required int userLlmId,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          UserLlmDetailsRoute.name,
          args: UserLlmDetailsRouteArgs(
            key: key,
            userLlmId: userLlmId,
          ),
          rawPathParams: {'id': userLlmId},
          initialChildren: children,
        );

  static const String name = 'UserLlmDetailsRoute';

  static _i22.PageInfo page = _i22.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserLlmDetailsRouteArgs>(
          orElse: () =>
              UserLlmDetailsRouteArgs(userLlmId: pathParams.getInt('id')));
      return _i21.UserLlmDetailsPage(
        key: args.key,
        userLlmId: args.userLlmId,
      );
    },
  );
}

class UserLlmDetailsRouteArgs {
  const UserLlmDetailsRouteArgs({
    this.key,
    required this.userLlmId,
  });

  final _i23.Key? key;

  final int userLlmId;

  @override
  String toString() {
    return 'UserLlmDetailsRouteArgs{key: $key, userLlmId: $userLlmId}';
  }
}
