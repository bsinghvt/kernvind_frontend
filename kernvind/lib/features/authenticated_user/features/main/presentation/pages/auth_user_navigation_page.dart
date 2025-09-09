import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

import 'package:kernvind/routes/nesteted_route.dart';

@RoutePage()
class AuthUserNavigationPage extends ConsumerStatefulWidget {
  const AuthUserNavigationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavigationPageState();
}

class _BottomNavigationPageState extends ConsumerState<AuthUserNavigationPage> {
  @override
  Widget build(BuildContext context) {
    final authTokenState = ref.watch(authTokenStateNotifierProvider);

    authTokenState.whenData((finalState) {
      if (finalState is NoAccessTokenState ||
          finalState is RefreshTokenExpiredState ||
          finalState is RefreshTokenFailureState) {
        AutoRouter.of(context).replaceAll([const LandingRoute()]);
      }
    });
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return AutoTabsScaffold(
        routes: NestetedRoute().authUserNavigationRoutes,
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            selectedItemColor:
                Theme.of(context).colorScheme.onTertiaryContainer,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: () {
              /*   print('tabs');
              final provider = NestetedRoute()
                  .authUserPagesProviders[tabsRouter.activeIndex];
              if (provider != null) {
                ref.invalidate(provider);
              }
              print(provider);*/
              return tabsRouter.setActiveIndex;
            }(),
            items: NestetedRoute().bottomNavigationBar,
          );
        },
      );
    } else {
      return const BigScreenNav();
    }
  }
}

class BigScreenNav extends ConsumerStatefulWidget {
  const BigScreenNav({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BigScreenNavState();
}

class _BigScreenNavState extends ConsumerState<BigScreenNav> {
  // initialize a index
  int _selectedIndex = 0;
  final _routes = NestetedRoute().authUserNavigationRoutes;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: <Widget>[
          // create a navigation rail
          NavigationRail(
            extended: screenWidth >= 800,
            minExtendedWidth: 180,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
                final provider =
                    NestetedRoute().authUserPagesProviders[_selectedIndex];
                if (provider != null) {
                  ref.invalidate(provider);
                }
                AutoRouter.of(context).push(_routes[_selectedIndex]);
              });
            },
            labelType: NavigationRailLabelType.none,
            destinations: NestetedRoute().navigationRail,
            selectedIconTheme: IconThemeData(
                color: Theme.of(context).colorScheme.onTertiaryContainer),
          ),
          const VerticalDivider(thickness: 1, width: 2),
          const Expanded(
            // nested routes will be rendered here
            child: AutoRouter(), // this is important
          )
        ],
      ),
    );
  }
}
