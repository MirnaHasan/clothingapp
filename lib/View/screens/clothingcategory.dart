import 'package:flutter/material.dart';

class Clothingcategory extends StatefulWidget {
  const Clothingcategory({super.key});

  @override
  State<Clothingcategory> createState() => _ClothingcategoryState();
}

class _ClothingcategoryState extends State<Clothingcategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clothing category"),
      ),
      body: Center(
        child: Text("Clothing category"),
      ),
    );
  }
}