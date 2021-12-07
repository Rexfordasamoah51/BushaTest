import 'package:flutter/material.dart';

/// Return the color when it's hax code is pass to it
/// ``dart
/// base(2536A7) purple in a darker shade
/// ``
Color base(String haxCode) => Color(int.parse('0xff$haxCode'));

/// Host all the colors the app colors
class AppColors {
  static Color white = Colors.white;

  static Color greyPrimary = base('9E9E9E');
  static Color greySecondary = base('F7F9FA');
  static Color bluePrimary = base('627EEA');
  static  Color yellowPrimary = base('F3BA2F');
  static  Color yellowSecondary = base('FF9900');
}
