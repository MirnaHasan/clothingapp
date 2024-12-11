import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:flutter/material.dart';

class DeviceUtils {
  static bool isMobile(BuildContext context) =>
   context.screenWidth < 600;

  static bool isTablet(BuildContext context) =>
      context.screenWidth >= 600 && context.screenWidth < 1200;

  static bool isDesktop(BuildContext context) => context.screenWidth >= 1200;

  static T valueDecider<T>(BuildContext context,
       { required T onMobile, T? onTablet, T? onDesktop ,T? others}) {
    if (isMobile(context)) {
      return onMobile;
    } else if (isTablet(context) && onTablet != null) {
      return onTablet;
    } else if (isDesktop(context) && onDesktop != null) {
      return onDesktop;
    }
    return others ?? onMobile;
  }
}
