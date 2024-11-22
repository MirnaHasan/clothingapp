
import 'package:clothes_app/homecntroller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>Homecntroller(),fenix: true);
  }
}