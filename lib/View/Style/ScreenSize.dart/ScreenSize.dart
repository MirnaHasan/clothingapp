import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

      
  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;

  // ! this to calculate height screen part from 100;
  double getHeight(double? h) {
    return h == null
        ? MediaQuery.sizeOf(this).height
        : MediaQuery.sizeOf(this).height * h / 100;
  }

  // ! this to calculate width screen part from 100;
  double getWidth(double? w) {
    return w == null
        ? MediaQuery.sizeOf(this).width
        : MediaQuery.sizeOf(this).width * w / 100;
  }

// ! here to return font size in all screen
  double getFontSize(double? f) {
    if (f == null) return 12;
    return isLandscape
        ? (MediaQuery.sizeOf(this).height / 3) * f / 100
        : (MediaQuery.sizeOf(this).width / 3) * f / 100;
  }
}
