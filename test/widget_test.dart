import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_example/global/buttons/primary_button.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/main.dart';
import 'package:nock/nock.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(nock.init);

  setUp(() {
    nock.cleanAll();
  });

  testWidgets('App UI Test', (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    RuntimeConfigs.isWidgetTesting = true;
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byType(PrimaryButton));
    await tester.pumpAndSettle(const Duration(seconds: 5));

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Accounts'), findsOneWidget);
    expect(find.text('Services'), findsOneWidget);

    await tester.tap(find.byKey(const Key('service_item')));
    await tester.pumpAndSettle();

    expect(find.text('Loans'), findsOneWidget);
    await tester.tap(find.text('Loans'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Statements'));
    await tester.pumpAndSettle();
    await tester.pageBack();

    // await tester.tap(find.text('Contacts'));
    // await tester.pumpAndSettle();

    // expect(find.text('Contacts'), findsOneWidget);

    // await tester.pageBack();
  });
}
