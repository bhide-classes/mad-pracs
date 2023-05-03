import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viva/clinic_login.dart';
void main() {
  testWidgets('', (WidgetTester tester) async{
    await tester.pumpWidget(const MyApp());
    final emailfield = find.widgetWithText(TextFormField, "Email");
    expect(emailfield, findsOneWidget);
    await tester.tap(emailfield);
    await tester.enterText(emailfield, "Some name");
    await tester.pump();
  });
}