import 'package:busha/src/app/app.dart';
import 'package:busha/src/presentation/explore/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'App widget test',
    (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      /// Test the hit Listview items
      expect(find.byType(BottomNav), findsOneWidget);
      expect(find.byType(NestedScrollView), findsOneWidget);
      expect(find.text("Top Movers"), findsOneWidget);
      expect(find.byType(WatchList), findsWidgets);

      /// Testing the cupertino  textfield 
      /// whem ever it is finished, the test will be mark as end
      var button = find.byType(CupertinoTextField);
      expect(button, findsOneWidget);
      await tester.tap(button);
    },
  );
}
