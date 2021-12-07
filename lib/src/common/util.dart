import 'package:flutter/material.dart';

/// Utility  to ease amd fuse the responsive conceptual
extension ResponsiveUtil on BuildContext {
  Size get size => MediaQuery.of(this).size;

  /// Width based on orientation
  double get responsiveWidth => isPortraitScreen ? size.width : size.height;

  /// Height based on orientation
  double get responsiveHeight => isPortraitScreen ? size.height : size.width;

  /// Check if the screen is large or desktop screenn
  bool get isLarge => responsiveWidth > 600;

  /// Check if the screen is medium or tablet screen
  bool get isMedium => responsiveWidth > 400 && responsiveWidth < 600;

  /// Check if the screen is small or mobile screen
  bool get isSmall => responsiveWidth < 400;

  /// Check if the screen is portrait
  bool get isPortraitScreen => size.width < size.height;

  /// Check if the screen is landscape
  bool get isLandscape => size.width > size.height;

  /// Check if the screen is xlargen
  bool get isXLarge => responsiveWidth > 1200;

  /// Check if the screen is xlarge
  bool get isXSmall => responsiveWidth < 800;
}
