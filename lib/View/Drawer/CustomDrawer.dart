import 'package:clothes_app/Controller/Clothingcategory/ClothingCategoryController.dart';
import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Clothingcategorycontroller>(
        init: Clothingcategorycontroller(),
        builder: (cartProvider) {
          return Drawer(
            backgroundColor: Colors.yellow.shade100,
            elevation: 4,
            width: context.getWidth(280),
            child: Column(children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    // final product = cartProvider.carts[index];
                    return ListTile(
                      title: const Text('product.name'),
                      subtitle: const Text('ahmed'
                          // '${product.price.toString()}  x${product.quantity}',
                          ),
                      leading: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          // cartProvider.removeCountFromCart(
                          // Cartmodels(
                          //   name: product.name,
                          //   price: product.price/product.quantity,
                          //   quantity: 1,
                          // ),
                          // );
                        },
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // cartProvider.removeFromCart(index);
                        },
                      ),
                    );
                  },
                ),
              ),
              Text('${Words.total.tr}  5000\$'),
              SizedBox(
                height: context.getHeight(1),
              )
            ]),
          );
        });
  }
}
