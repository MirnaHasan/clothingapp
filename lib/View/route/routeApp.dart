import 'package:clothes_app/View/MainScreen/MainScreen.dart';
import 'package:clothes_app/View/screens/clothingcategory.dart';
import 'package:clothes_app/View/screens/onboardingscreen.dart';
import 'package:clothes_app/View/screens/registerscreen.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';
import 'package:clothes_app/View/widgets/signupbody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteApp {
  RouteApp._();
  static RouteApp instance = RouteApp._();
  static String onboarding = '/onboarding';
  static String homepage = '/homepage';
  static String mainScreen = '/mainScreen';
  static String signUp = '/signUp';
  static String clothingCategory='/clothingCategory';

   Map <String, WidgetBuilder> routes = {
    onboarding: (context) => const Onboardingscreen(),
    homepage: (context) =>  Homepagebody(),
    mainScreen : (context) => const MainScreen(),
    signUp :(context) => SignUp(), 
    clothingCategory:(context)=>   Clothingcategory(),
  };
}
