

import 'package:clothes_app/Controller/HomeController/homecntroller.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/widgets/clothingcategorybody.dart';
import 'package:clothes_app/model/clothingitemdata.dart';
import 'package:clothes_app/model/clothingitemdata.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Clothingcategory extends StatelessWidget {
  Clothingcategory({super.key});

// final  Homecntroller cont= Get.put(Homecntroller());
final argument = Get.arguments;
final title = Get.arguments["title"];
final imageUrl = Get.arguments["imageUrl"];
final id = Get.arguments["id"];
final Scaffoldkey = GlobalKey<ScaffoldState>();
List carts = [];
  @override
  
  Widget build(BuildContext context) {
      final  filterOutfits = outfitData.where((element) {
    return element.categories.contains(id);
   } ,).toList();

 
    return Scaffold(
    key: Scaffoldkey,
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
                        size: 20,
                        color: carts.isEmpty ? Colors.black : Colors.red,
                      ),
                    )),
                Positioned(
                  right: context.getWidth(4.4),
                  top: context.getHeight(-0.3),
                  child: Text(
                    '${carts.length}',
                    style: TextStyle(
                      fontSize: context.getFontSize(8),
                      color: carts.isEmpty ? Colors.black : Colors.red,
                    ),
                  ),
                ),
              ],
),


      ),






      body:SafeArea(
     bottom: true,
     top: true,
        child: 

  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الأعمدة
          crossAxisSpacing: 10, // المسافة بين الأعمدة
          mainAxisSpacing: 16, // المسافة بين الصفوف
          childAspectRatio: 0.7, // نسبة العرض إلى الطول
        ),
        itemCount: filterOutfits.length, // عدد العناصر
        itemBuilder: (context, index) {
     
          return ClothingCategoryBody(
            name: filterOutfits[index].title, 
            imageUrl: filterOutfits[index].imageUrl, 
            price: filterOutfits[index].price, 
            size: filterOutfits[index].size);
        })));
  }
}