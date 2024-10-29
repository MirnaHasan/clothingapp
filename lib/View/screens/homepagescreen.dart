import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepagescreen extends StatelessWidget {
  const Homepagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [],
        centerTitle: true,
        title: Text(Words.appName.tr),
        leading: const Center(child: Text('data')),
      ),
      backgroundColor: Colors.white,
      body: const Homepagebody(),
    );
  }
}
