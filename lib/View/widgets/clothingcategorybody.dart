

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClothingCategoryBody extends StatelessWidget {
   ClothingCategoryBody({super.key, required this.name, required this.imageUrl, required this.price, required this.size});
  final String name ; 
  final String imageUrl;
  final String price ; 
  final String size ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: () {
       
     },
     child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 20,
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(imageUrl, 
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,),
            ),
          ],)
        ],
      ),
     ),
    );
  }
}