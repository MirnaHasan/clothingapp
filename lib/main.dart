import 'dart:async';
import 'package:clothes_app/Helper/Log/LogApp.dart';
import 'package:clothes_app/Helper/Service/initService.dart';
import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/route/routeApp.dart';
import 'package:clothes_app/View/screens/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await initService();
      runApp(
        const MyApp(),
        // DevicePreview(
        //   enabled: !kReleaseMode,
        //   builder: (context) => const MyApp(), // Wrap your app
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      title: 'Clothes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: Words(),
      home: const Onboardingscreen(),
      getPages: RouteApp.instance.getPages,
      initialRoute: shared.getBool('isOne') == true
          ? RouteApp.mainScreen
          : RouteApp.onboarding,
    );
  }
}
