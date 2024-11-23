import 'dart:async';

import 'package:clothes_app/Helper/Log/LogApp.dart';
import 'package:clothes_app/Helper/Service/initService.dart';
import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/MainScreen/MainScreen.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/SizeBuilder.dart';
import 'package:clothes_app/View/route/routeApp.dart';
import 'package:clothes_app/View/screens/homepagescreen.dart';
import 'package:clothes_app/View/screens/onboardingscreen.dart';
import 'package:clothes_app/View/screens/registerscreen.dart';
import 'package:clothes_app/firebase_options.dart';
import 'package:clothes_app/Helper/Binding/mybindings.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
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

  // HomeController controller = Get.put(HomeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizeBuilder(
      baseSize: const Size(380, 720),
      height: context.height,
      width: context.width,
      child: GetMaterialApp(
        locale: Get.deviceLocale,
        debugShowCheckedModeBanner: false,
        title: 'Clothes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        translations: Words(),
        initialBinding: MyBindings(),
        // home: SignUp(),
        home: FirebaseAuth.instance.currentUser == null
            ? Homepagescreen()
            : const MainScreen(),
        routes: RouteApp.instance.routes,
      ),
    );
  }
}
