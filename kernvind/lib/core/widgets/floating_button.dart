import 'package:flutter/material.dart';

class AppFloatingButton extends StatelessWidget {
  final String toolTip;
  final VoidCallback onPressed;
  const AppFloatingButton(
      {super.key, required this.toolTip, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: toolTip,
      onPressed: onPressed,
      tooltip: toolTip,
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      child: const Icon(Icons.add),
    );
  }
}
