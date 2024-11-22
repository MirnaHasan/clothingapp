
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Homecntroller extends GetxController{
 
  @override
  void onInit() {
  FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
    super.onInit();
  }

}