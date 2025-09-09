import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/pages/bot_create_page.dart';

void main() {
  testWidgets('bot create page', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: BotCreatePage(),
        ),
      ),
    );
    await tester.pump();
    expect(find.text('Create Bot'), findsNWidgets(1));
  });
}
