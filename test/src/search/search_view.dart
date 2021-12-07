import 'package:busha/src/presentation/search/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Search view test', (WidgetTester tester) async {
    /// App [init]
    const app = MaterialApp(home: SearchView());

    /// Testing the cupertino  textfield
    await tester.pumpWidget(app);
    var button = find.byType(CupertinoTextField);
    expect(button, findsOneWidget);
    await tester.enterText(button, 'Search Bitcoin');
    expect(find.text('Search Bitcoin'), findsOneWidget);

    /// Checking for the dummy test
    expect(find.text('Naira'), findsOneWidget);
    expect(find.text('Ethereum'), findsOneWidget);
    expect(find.text('USD Token'), findsOneWidget);

    /// Going back to Explore View
    /// whem ever it is finished, the test will be mark as end
    var calcelButton = find.text('Cancel');
    expect(calcelButton, findsOneWidget);
    await tester.tap(calcelButton);
  });
}
