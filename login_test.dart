import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viva/clinic_login.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final namefield = find.widgetWithText(TextFormField, "Name");
    expect(namefield, findsOneWidget);
    await tester.tap(namefield);
    await tester.enterText(namefield, "Some name");
    final passfield = find.widgetWithText(TextFormField, "Password");
    expect(passfield, findsOneWidget);
    await tester.tap(passfield);
    await tester.enterText(passfield, "some password");
    final logiButton = find.widgetWithText(ElevatedButton, "Login");
    expect(logiButton, findsOneWidget);
    await tester.tap(logiButton);
    await tester.pump();
    expect(find.text("Login successful"), findsOneWidget);
  });
}
