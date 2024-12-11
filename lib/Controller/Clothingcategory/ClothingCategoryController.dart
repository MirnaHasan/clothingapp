import 'package:get/get.dart';

class Clothingcategorycontroller extends GetxController {
  List carts = [];
  // void addToCart(Cartmodels product) async {
  //   // تحقق مما إذا كان المنتج موجودًا بالفعل في السلة
  //   int index = carts.indexWhere(
  //     (item) => item.name == product.name,
  //   );

  //   if (index != -1) {
  //     // إذا كان المنتج موجودًا، قم بزيادة العدد وتحديث السعر الإجمالي
  //     carts[index].quantity += product.quantity;
  //     carts[index].price += product.price;
  //     // Logger.l('message calc ${carts[index].price}');
  //   } else {
  //     // إذا لم يكن المنتج موجودًا، أضفه للسلة
  //     carts.add(product);
  //   }

  // }

  void removeFromCart(int index) async {
    carts.removeAt(index);
    update();
  }

  void removeCountFromCart(Cartmodels product) {
    // تحقق مما إذا كان المنتج موجودًا في السلة
    int index = carts.indexWhere(
      (item) => item!.name == product.name,
    );

    if (index != -1) {
      // إذا كان المنتج موجودًا، قم بإنقاص العدد وتحديث السعر
      carts[index].quantity -= product.quantity;
      carts[index].price -= product.price;

      // إذا وصل العدد إلى الصفر أو أقل، احذف المنتج من السلة
      if (carts[index].quantity <= 0) {
        carts.removeAt(index);
      }
    }
  }

  double getAllPriceCart() {
    double total = 0.0;
    for (int i = 0; i < carts.length; i++) {
      total += carts[i].price; //* carts[i].quantity;
    }
    return total;
  }
}
