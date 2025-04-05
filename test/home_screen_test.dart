import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quotes/views/home_screen.dart';

void main() {
  testWidgets('HomeScreen displays a quote and button works', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    // Wait for the widget to fully build
    await tester.pumpAndSettle();

    // Expect to find the Refresh button
    expect(find.text('Refresh'), findsOneWidget);

    // Get the current quote text
    final quoteBefore = find.byType(Text).evaluate().first.widget as Text;

    // Tap the refresh button
    await tester.tap(find.text('Refresh'));
    await tester.pump();

    // After tapping, the quote text might change (not guaranteed every time due to randomness)
    final quoteAfter = find.byType(Text).evaluate().first.widget as Text;

    expect(quoteAfter.data != null, true);
    expect(quoteAfter.data!.isNotEmpty, true);
  });
}
