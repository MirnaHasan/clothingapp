import 'package:clothes_app/Helper/Log/LogApp.dart';
import 'package:clothes_app/model/clothingitem.dart';
import 'package:clothes_app/model/outfit.dart';
import 'package:get/get.dart';

class Clothingcategorycontroller extends GetxController {
  List carts = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    if (carts.isEmpty) {
      logWarning('message isEmpty');
    } else {
      logWarning('message ${carts[0].title}');
    }
    // logWarning('message ${carts[0].title}');
  }

  void addToCart(Outfit product) async {
    // تحقق مما إذا كان المنتج موجودًا بالفعل في السلة
    // int index = carts.indexWhere(
    //   (item) => item.name == product.title,
    // );

    // if (index != -1) {
    // إذا كان المنتج موجودًا، قم بزيادة العدد وتحديث السعر الإجمالي
    // carts[index].quantity += product.id;
    // carts[index].price += product.price;
    // Logger.l('message calc ${carts[index].price}');
    // } else {
    // إذا لم يكن المنتج موجودًا، أضفه للسلة
    carts.add(product);

    update();
    // }
  }

  void removeFromCart(int index) async {
    carts.removeAt(index);
    update();
  }

  // void removeCountFromCart(Cartmodels product) {
  //   // تحقق مما إذا كان المنتج موجودًا في السلة
  //   int index = carts.indexWhere(
  //     (item) => item!.name == product.name,
  //   );

  //   if (index != -1) {
  //     // إذا كان المنتج موجودًا، قم بإنقاص العدد وتحديث السعر
  //     carts[index].quantity -= product.quantity;
  //     carts[index].price -= product.price;

  //     // إذا وصل العدد إلى الصفر أو أقل، احذف المنتج من السلة
  //     if (carts[index].quantity <= 0) {
  //       carts.removeAt(index);
  //     }
  //   }
  // }

  double getAllPriceCart() {
    double total = 0.0;
    for (var element in carts) {
      String w = element.price;
      String c = w.substring(0, w.length - 1);

      logInfo('message  ${c}');
       total = total + double.parse(c);
    }
    return total;
  }
}
