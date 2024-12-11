import 'package:clothes_app/Controller/HomeController/homecntroller.dart';
import 'package:clothes_app/View/Drawer/CustomDrawer.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/DeviceUtils.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/widgets/clothingcategorybody.dart';
import 'package:clothes_app/model/clothingitemdata.dart';
import 'package:clothes_app/model/clothingitemdata.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Clothingcategory extends StatelessWidget {
  Clothingcategory({super.key});

// final  Homecntroller cont= Get.put(Homecntroller());
  // final argument = Get.arguments;
  final title = Get.arguments["title"];
  final imageUrl = Get.arguments["imageUrl"];
  final id = Get.arguments["id"];
  final Scaffoldkey = GlobalKey<ScaffoldState>();
  List carts = [];
  @override
  Widget build(BuildContext context) {
    final filterOutfits = outfitData.where(
      (element) {
        return element.categories.contains(id);
      },
    ).toList();

    return Scaffold(
      key: Scaffoldkey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text(title),
        leading: Stack(
          children: [
            Positioned(
                top: context.getHeight(0.5),
                child: IconButton(
                  onPressed: () => Scaffoldkey.currentState!.openDrawer(),
                  icon: Icon(
                    Icons.shopping_cart,
                    size: context.getFontSize(22),
                    color: carts.isEmpty ? Colors.black : Colors.red,
                  ),
                )),
            Positioned(
              right: context.getWidth(25),
              top: context.getHeight(1),
              child: Text(
                '${carts.length}',
                style: TextStyle(
                  fontSize: context.getFontSize(11),
                  color: carts.isEmpty ? Colors.black : Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        bottom: true,
        top: true,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: DeviceUtils.valueDecider<int>(
                context,
                onMobile: 2,
                onTablet: 3,
                onDesktop: 4,
              ), // عدد الأعمدة
              crossAxisSpacing: context.getWidth(6), // المسافة بين الأعمدة
              mainAxisSpacing: context.getHeight(6), // المسافة بين الصفوف
              childAspectRatio: context.getMinSize(0.7) // نسبة العرض إلى الطول
              ),
          itemCount: filterOutfits.length, // عدد العناصر
          itemBuilder: (context, index) {
            return ClothingCategoryBody(
                name: filterOutfits[index].title,
                imageUrl: filterOutfits[index].imageUrl,
                price: filterOutfits[index].price,
                size: filterOutfits[index].size);
          },
        ),
      ),
    );
  }
}
