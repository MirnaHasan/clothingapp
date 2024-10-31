import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:flutter/material.dart';

class Homepagebody extends StatefulWidget {
  const Homepagebody({super.key});

  @override
  State<Homepagebody> createState() => _HomepagebodyState();
}

class _HomepagebodyState extends State<Homepagebody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight(50),
      width: context.getWidth(30),
      color:Colors.red,
    );
  }
}
