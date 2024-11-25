import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';


import 'package:clothes_app/model/clothingitemdata.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen'),
        actions: [
        
          IconButton(onPressed: ()async{
            await FirebaseAuth.instance.signOut();
            Get.offAllNamed("/homepage");

          }, icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisSpacing: context.getHeight(0.5),
            crossAxisSpacing: context.getWidth(1),
            childAspectRatio: 3 / 3.5,
          ),
          children: ClothingitemData.map( (c)=>
          Clothingitems(title: c.title, imageUrl: c.imageUrl)
          ).toList()

         
        ),
      ),
    );
  }
}










class Clothingitems extends StatelessWidget {
  final String title ; 
  final String imageUrl;
   Clothingitems({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(imageUrl , 
        height: 200,
        fit: BoxFit.cover,
        ), 
        Container(
          child: Text(title),
        )

      ],
    );
  }
}