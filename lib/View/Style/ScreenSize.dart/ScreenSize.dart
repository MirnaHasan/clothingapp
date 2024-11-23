import 'package:clothes_app/View/Style/ScreenSize.dart/SizeBuilder.dart';
import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  // double get H => isLandscape
  //     ? MediaQuery.sizeOf(this).width
  //     : MediaQuery.sizeOf(this).height;

  // double get W => isLandscape
  //     ? MediaQuery.sizeOf(this).height
  //     : MediaQuery.sizeOf(this).width;

      
  SizeBuilder get sizeBuilder => SizeBuilder.of(this);
  double get scaleWidth => sizeBuilder.width / sizeBuilder.baseSize.width;
  double get scaleHeight => sizeBuilder.height / sizeBuilder.baseSize.height;


  // ! this to calculate height screen part from 100;
  double getHeight(num h) {
    return h * scaleHeight;
  }

  // ! this to calculate width screen part from 100;
  double getWidth(num w) {
    return w * scaleWidth;
  }

// ! here to return font size in all screen

  double getFontSize(num f) {
    return f * scaleWidth;
  }
  

}
