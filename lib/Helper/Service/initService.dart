import 'package:clothes_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences shared;

class InitService {
  // Singleton instance
  static final InitService instance = InitService._();
  InitService._();

  Future<void> initService() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    shared = await SharedPreferences.getInstance();
  }
}
