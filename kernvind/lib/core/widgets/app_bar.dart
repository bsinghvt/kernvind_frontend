import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';

AppBar appBar(
    {required String title,
    required BuildContext context,
    bool backButton = false,
    bool centerTitle = false,
    bool showLogoutAction = true,
    List<Widget>? actionsList,
    WidgetRef? ref}) {
  List<Widget> actions = <Widget>[
    if (showLogoutAction)
      IconButton(
        icon: const Icon(Icons.logout),
        tooltip: 'Logout',
        onPressed: () {
          if (ref != null) {
            ref.read(authTokenStateNotifierProvider.notifier).logout();
          }
        },
      ),
  ];
  if (actionsList != null) {
    actionsList.addAll(actions);
  } else {
    actionsList = actions;
  }
  return AppBar(
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      toolbarOpacity: 0.5,
      centerTitle: centerTitle,
      automaticallyImplyLeading: backButton,
      actions: actionsList,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w400),
      ));
}
