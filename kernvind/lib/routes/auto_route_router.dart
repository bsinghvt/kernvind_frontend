import 'package:auto_route/auto_route.dart';
import 'package:kernvind/routes/auto_route_auth_guard.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  String? refreshToken;
  AppRouter({super.navigatorKey, required this.refreshToken});
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: LandingRoute.page,
            //  keepHistory: false,
            initial: refreshToken != null ? false : true),

        /// routes go here
        AutoRoute(
          page: HomeRoute.page,
          //  keepHistory: false,
          // initial: isTokenAvailable ? false : true
        ),
        AutoRoute(
          path: '/login',
          keepHistory: false,
          page: LoginRoute.page,
        ),
        AutoRoute(path: '/signup', keepHistory: false, page: SignUpRoute.page),
        AutoRoute(
            path: '/home',
            page: AuthUserNavigationRoute.page,
            initial: refreshToken != null ? true : false,
            children: [
              RedirectRoute(path: '', redirectTo: 'bots'),
              AutoRoute(
                path: 'bots',

                page: BotListRoute.page,
                //   children: [AutoRoute(path: 'create', page: BotCreateRoute.page)],
              ),
              AutoRoute(
                path: 'datasources',
                page: DatasourceListRoute.page,
              ),
              AutoRoute(
                path: 'llms',
                page: LlmListRoute.page,
              ),
            ]),
        AutoRoute(
          path: '/bot-create',
          page: BotCreateRoute.page,
          guards: [
            AutoRouteAuthGuard(),
          ],
        ),
        AutoRoute(
          path: '/bots/chat/:id/:name',
          page: BotChatRoute.page,
          guards: [
            AutoRouteAuthGuard(),
          ],
        ),
        AutoRoute(
          path: '/userllm-create',
          page: UserLlmCreateRoute.page,
          guards: [
            AutoRouteAuthGuard(),
          ],
        ),
        AutoRoute(
          path: '/datasource-create',
          page: DatasourceCreateRoute.page,
          guards: [
            AutoRouteAuthGuard(),
          ],
        ),
        AutoRoute(
          path: '/bots/details/:id',
          page: BotDetailRoute.page,
          guards: [
            AutoRouteAuthGuard(),
          ],
        ),
        AutoRoute(
          path: '/llms/:id',
          page: UserLlmDetailsRoute.page,
          guards: [
            AutoRouteAuthGuard(),
          ],
        ),
        AutoRoute(
          path: '/datasources/:id',
          page: DatasourceDetailsRoute.page,
          guards: [
            AutoRouteAuthGuard(),
          ],
        ),
        AutoRoute(
          page: GetChatGptApiKeyRoute.page,
        ),
        AutoRoute(
          page: OllamaSetupHowtoRoute.page,
        ),
        AutoRoute(
          path: '/disclaimer',
          page: DisclaimerRoute.page,
        ),
        AutoRoute(
          path: '/plans',
          page: SubscriptionPlansRoute.page,
        ),
        AutoRoute(
          page: PlaygroundSetupRoute.page,
        ),
        AutoRoute(
          page: PlaygroundChatRoute.page,
        )
      ];
}
