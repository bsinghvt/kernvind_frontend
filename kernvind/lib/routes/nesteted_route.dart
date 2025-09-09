import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

final class NestetedRoute {
  static final NestetedRoute _singleton = NestetedRoute._internal();
  factory NestetedRoute() {
    return _singleton;
  }
  NestetedRoute._internal();

  static const _authUserNavigationRoutes = [
    BotListRoute(),
    DatasourceListRoute(),
    LlmListRoute(),
  ];

  static final _authUserPagesProviders = [
    botProviderProvider,
    datasourceListProvider,
    userLlmListProvider,
  ];

  static const _bottomNavigationBar = [
    BottomNavigationBarItem(label: 'Bots', icon: Icon(Icons.smart_toy)),
    BottomNavigationBarItem(
        label: 'Datasources', icon: Icon(Icons.dataset_linked)),
    // BottomNavigationBarItem(label: 'Datafeeds', icon: Icon(Icons.dynamic_feed)),
    BottomNavigationBarItem(label: 'AI modelss', icon: Icon(Icons.language)),
  ];

  static const _navigationRail = <NavigationRailDestination>[
    // navigation destinations
    NavigationRailDestination(
        padding: EdgeInsets.all(10),
        label: Text('Bots'),
        icon: Icon(
          Icons.smart_toy,
        )),
    NavigationRailDestination(
      icon: Icon(
        Icons.dataset_linked,
      ),
      padding: EdgeInsets.all(10),
      label: Text('Datasources'),
    ),

    NavigationRailDestination(
      icon: Icon(
        Icons.language,
      ),
      padding: EdgeInsets.all(10),
      label: Text('AI models'),
    ),
  ];

  List<PageRouteInfo<void>> get authUserNavigationRoutes =>
      _authUserNavigationRoutes;

  List<BottomNavigationBarItem> get bottomNavigationBar => _bottomNavigationBar;

  List<NavigationRailDestination> get navigationRail => _navigationRail;

  get authUserPagesProviders => _authUserPagesProviders;
}
