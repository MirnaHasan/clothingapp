import 'package:clothes_app/View/MainScreen/MainScreen.dart';
import 'package:clothes_app/View/screens/onboardingscreen.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteApp {
  RouteApp._();
  static RouteApp instance = RouteApp._();
  static String onboarding = '/onboarding';
  static String homepage = '/homepage';
  static String mainScreen = '/mainScreen';

  List<GetPage<dynamic>>? getPages = [
    GetPage(name: onboarding, page: () => const Onboardingscreen()),
    GetPage(name:mainScreen, page: () => const MainScreen()),
    GetPage(name: homepage, page: () => const Homepagebody()),

  ];
}
