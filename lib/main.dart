import 'dart:async';

import 'package:clothes_app/Helper/Log/LogApp.dart';
import 'package:clothes_app/Helper/Service/initService.dart';
import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/MainScreen/MainScreen.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/SizeBuilder.dart';
import 'package:clothes_app/View/route/routeApp.dart';
import 'package:clothes_app/View/screens/homepagescreen.dart';

import 'package:clothes_app/Helper/Binding/mybindings.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      // initialize the app Service
      //! * here contains the firebase option  */
      await InitService.instance.initService();

      runApp(
        const MyApp(),
        // DevicePreview(
        //   enabled: !kReleaseMode,
        //   builder: (context) =>  MyApp(), // Wrap your app
        // ),
      );
    },
    (
      error,
      stack,
    ) =>
        logError(
      error.toString(),
    ),
  );
  // if it's not on the web, windows or android, load the accent color
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeBuilder(
      baseSize: const Size(380, 720),
      height: context.screenHeight,
      width: context.screenWidth,
      child: GetMaterialApp(
        locale: Get.deviceLocale,
        debugShowCheckedModeBanner: false,
        title: Words.appName.tr,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        translations: Words(),
        initialBinding: MyBindings(),
        home: FirebaseAuth.instance.currentUser == null
            ? const Homepagescreen()
            : const MainScreen(),
        routes: RouteApp.instance.routes,
      ),
    );
  }
}
