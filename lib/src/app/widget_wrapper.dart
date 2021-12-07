import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({
    Key? key,
    required this.child,
    this.bottomNavigationBar,
  }) : super(key: key);

  final Widget child;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: bottomNavigationBar,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
