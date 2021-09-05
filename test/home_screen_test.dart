import 'package:basic_routes_navigation/src/navigation/routes.dart';
import 'package:basic_routes_navigation/src/ui/first_screen.dart';
import 'package:basic_routes_navigation/src/ui/home_screen.dart';
import 'package:basic_routes_navigation/src/ui/second_screen.dart';
import 'package:basic_routes_navigation/src/ui/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets(
      'Button First Page is present and triggers navigation after tapped',
      (WidgetTester tester) async {
    final mockObserver = MockNavigatorObserver();
    await tester.pumpWidget(
      MaterialApp(
        home: const HomePage(),
        navigatorObservers: [mockObserver],
        onGenerateRoute: (settings) => Routes.routes(settings),
      ),
    );
    expect(find.byKey(const ValueKey('firstPage')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('firstPage')));
    await tester.pumpAndSettle();
    expect(find.byType(FirstPage), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('back')));
    await tester.pumpAndSettle();
    expect(find.byType(HomePage), findsOneWidget);
  });

  testWidgets(
      'Button Second Page is present and triggers navigation after tapped',
      (WidgetTester tester) async {
    final mockObserver = MockNavigatorObserver();
    await tester.pumpWidget(
      MaterialApp(
        home: const HomePage(),
        navigatorObservers: [mockObserver],
        onGenerateRoute: (settings) => Routes.routes(settings),
      ),
    );
    expect(find.byKey(const ValueKey('secondPage')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('secondPage')));
    await tester.pumpAndSettle();
    expect(find.byType(SecondPage), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('back')));
    await tester.pumpAndSettle();
    expect(find.byType(HomePage), findsOneWidget);
  });

  testWidgets(
      'Button Third Page is present and triggers navigation after tapped',
      (WidgetTester tester) async {
    final mockObserver = MockNavigatorObserver();
    await tester.pumpWidget(
      MaterialApp(
        home: const HomePage(),
        navigatorObservers: [mockObserver],
        onGenerateRoute: (settings) => Routes.routes(settings),
      ),
    );
    expect(find.byKey(const ValueKey('thirdPage')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('thirdPage')));
    await tester.pumpAndSettle();
    expect(find.byType(ThirdPage), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('back')));
    await tester.pumpAndSettle();
    expect(find.byType(HomePage), findsOneWidget);
  });
}
