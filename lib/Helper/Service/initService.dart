import 'package:clothes_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences shared;
Future<void> initService() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  shared = await SharedPreferences.getInstance();
}
