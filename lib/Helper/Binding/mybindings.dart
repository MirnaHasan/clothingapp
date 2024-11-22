
import 'package:clothes_app/Controller/HomeController/homecntroller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>Homecntroller(),fenix: true);
  }
}