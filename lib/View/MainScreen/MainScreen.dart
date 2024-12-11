import 'dart:ui';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/route/routeApp.dart';
import 'package:clothes_app/model/clothingitemdata.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 133, 155, 193),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 133, 155, 193),
        title: const Text('MainScreen'),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Get.offAllNamed("/homepage");
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
          ),
          ListView.builder(
              itemCount: ClothingitemData.length,
              itemBuilder: (context, i) {
                return Clothingitems(
                    title: ClothingitemData[i].title,
                    imageUrl: ClothingitemData[i].imageUrl,
                    id: ClothingitemData[i].id);
              }),
        ],
      )),
    );
  }
}

class Clothingitems extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;

  const Clothingitems(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.getHeight(190),
          width: context.getWidth(360),
          child: InkWell(
            onTap: () {
              Get.toNamed(
                RouteApp.clothingCategory,
                arguments: {
                  "title": title,
                  "imageUrl": imageUrl,
                  "id": id,
                },
              );
            },
            child: Card(
              shadowColor: const Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromARGB(255, 24, 24, 25),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 35,
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imageUrl,
                      height: context.getHeight(200),
                      width: context.getWidth(250),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: context.getHeight(40),
                    width: context.getWidth(90),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 162, 162),
                          offset: Offset(1, 12),
                          blurRadius: 45,
                        )
                      ],
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: context.getFontSize(20),
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: context.getHeight(20),
        ),
      ],
    );
  }
}
