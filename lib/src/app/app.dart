import 'package:busha/src/presentation/explore/explore_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busha Test',
      theme: ThemeData(
        canvasColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: const ExploreView(),
    );
  }
}
