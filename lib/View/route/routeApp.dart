


import 'package:clothes_app/View/MainScreen/MainScreen.dart';
import 'package:clothes_app/View/screens/onboardingscreen.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';
import 'package:flutter/material.dart';

class RouteApp {
  RouteApp._();
  static RouteApp instance = RouteApp._();
  static String onboarding = '/onboarding';
  static String homepage = '/homepage';
  static String mainScreen= '/mainScreen';

   Map <String, WidgetBuilder> routes = {
    onboarding: (context) => const Onboardingscreen(),
    homepage: (context) => const Homepagebody(),
    // mainScreen : (context) => const MainScreen(),
  };
}