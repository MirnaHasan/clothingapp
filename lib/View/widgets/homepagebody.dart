import 'package:clothes_app/Helper/Log/LogApp.dart';
import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/Style/colorApp/colorsApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Homepagebody extends StatefulWidget {
  const Homepagebody({super.key});

  @override
  State<Homepagebody> createState() => _HomepagebodyState();
}

class _HomepagebodyState extends State<Homepagebody> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.background,
      body: SingleChildScrollView(
        child: Padding(
          //! هنا  ناخذ قياس من  كونيكست
          padding: EdgeInsets.only(top: context.getHeight(8)),
          child: Column(
            children: [
              //! يضاف الى ملف الترجمة
              Text(
                Words.register.tr,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: context.getFontSize(34)),
              ),

              Text(
                Words.welcome.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: context.getFontSize(20),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: context.getHeight(4),
              ),
              Container(
                height: context.getHeight(100),
                width: context.getWidth(100),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: context.getHeight(6),
                            right: context.getWidth(4),
                            left: context.getWidth(4),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(
                              right: context.getWidth(2),
                              left: context.getWidth(2),
                            ),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 25,
                                    offset: const Offset(2, 2),
                                    color: ColorApp.background.withOpacity(0.7),
                                  )
                                ],
                                color: Colors.white,
                                border: Border.all(color: ColorApp.background),
                                borderRadius: BorderRadius.circular(15)),
                            width: context.getWidth(93),
                            child: Column(
                              children: [
                                SizedBox(height: context.getHeight(1.9)),
                                CustomTextformfield(
                                    title: Words.userName.tr,
                                    controller: userName),
                                SizedBox(height: context.getHeight(1.9)),
                                CustomTextformfield(
                                    title: Words.email.tr, controller: email),
                                SizedBox(height: context.getHeight(1.9)),
                                CustomTextformfield(
                                    title: Words.password.tr,
                                    controller: password),
                                SizedBox(height: context.getHeight(1.9)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.getHeight(5),
                    ),
                    Text(
                      Words.forgotPassword.tr,
                      style: TextStyle(
                          fontSize: context.getFontSize(14),
                          color: ColorApp.background,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: context.getHeight(2)),
                    MaterialButton(
                      padding: EdgeInsets.symmetric(
                          vertical: context.getHeight(1),
                          horizontal: context.getWidth(6)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      color: ColorApp.background,
                      onPressed: () {
                        
                      },
                      child: Text(
                        Words.register.tr,
                        style: TextStyle(
                          fontSize: context.getFontSize(16),
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    super.key,
    required this.title,
    required this.controller,
  });
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 1, color: ColorApp.background),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 1, color: ColorApp.background),
        ),
        label: Text(
          title,
          style: TextStyle(
              fontSize: context.getFontSize(13),
              color: ColorApp.background,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
