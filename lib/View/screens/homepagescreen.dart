import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepagescreen extends StatelessWidget {
  const Homepagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Homepagebody(),
    );
  }
}
