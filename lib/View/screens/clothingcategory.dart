

import 'package:clothes_app/Controller/HomeController/homecntroller.dart';
import 'package:clothes_app/model/clothingitemdata.dart';
import 'package:clothes_app/model/clothingitemdata.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Clothingcategory extends StatelessWidget {
  Clothingcategory({super.key});

// final  Homecntroller cont= Get.put(Homecntroller());
final argument = Get.arguments;
final title = Get.arguments["title"];
final imageUrl = Get.arguments["image_url"];
final id = Get.arguments["id"];


  @override
  
  Widget build(BuildContext context) {
      final filterOutfits = outfitData.where((element) {
    return element.categories.contains(id);
   } ,).toList();

 
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:
      ListView.builder(
        itemCount: filterOutfits.length,
        itemBuilder: (context,i){
          return Text("${filterOutfits[i].title}");

      }) 

          
      
      
    );
  }
}