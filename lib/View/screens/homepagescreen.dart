import 'package:clothes_app/View/Style/colorApp/colorsApp.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';
import 'package:flutter/material.dart';

class Homepagescreen extends StatelessWidget {
  const Homepagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.background,
      body: Homepagebody(),
    );
  }
}
