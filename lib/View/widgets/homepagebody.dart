import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/Style/colorApp/colorsApp.dart';
import 'package:clothes_app/main.dart';
import 'package:flutter/material.dart';
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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userName.dispose();
    password.dispose();
    email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: context.getHeight(10)),
          child: Column(
            children: [
              Text(
                Words.register.tr,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: context.getFontSize(32)),
              ),
              Text(
                Words.welcome.tr,
                style: TextStyle(
                  fontSize: context.getFontSize(20),
                  color: Colors.white,
                  // fontWeight: FontWeight.bold ,
                ),
              ),
              SizedBox(
                height: context.getHeight(2),
              ),
              // SizedBox(
              //   height: context.getHeight(10),
              //   child: Column(
              //     children: [
              //       Stack(
              //         children: [
              //           Padding(
              //             padding: EdgeInsets.only(
              //               top: context.getHeight(6),
              //               right: context.getWidth(4),
              //               left: context.getWidth(4),
              //             ),
              //             child: Container(
              //               padding: EdgeInsets.only(
              //                 right: context.getWidth(2),
              //                 left: context.getWidth(2),
              //               ),
              //               decoration: BoxDecoration(
              //                   boxShadow: [
              //                     BoxShadow(
              //                       blurRadius: 25,
              //                       offset: const Offset(2, 2),
              //                       color:
              //                           ColorApp.background.withOpacity(0.7),
              //                     )
              //                   ],
              //                   color: Colors.white,
              //                   border:
              //                       Border.all(color: ColorApp.background),
              //                   borderRadius: BorderRadius.circular(15)),
              //               width: context.getWidth(93),
              //               child: Column(
              //                 children: [
              //                   SizedBox(height: context.getHeight(1.9)),
              //                   CustomTextformfield(
              //                       title: Words.userName.tr,
              //                       controller: userName),
              //                   SizedBox(height: context.getHeight(1.9)),
              //                   CustomTextformfield(
              //                       title: Words.email.tr, controller: email),
              //                   SizedBox(height: context.getHeight(1.9)),
              //                   CustomTextformfield(
              //                       title: Words.password.tr,
              //                       controller: password),
              //                   SizedBox(height: context.getHeight(1.9)),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         height: context.getHeight(5),
              //       ),
              //       Text(
              //         Words.forgotPassword.tr,
              //         style: TextStyle(
              //             fontSize: context.getFontSize(14),
              //             color: ColorApp.background,
              //             fontWeight: FontWeight.bold),
              //       ),
              //       SizedBox(height: context.getHeight(2)),
              //       MaterialButton(
              //         padding: EdgeInsets.symmetric(
              //             vertical: context.getHeight(1),
              //             horizontal: context.getWidth(6)),
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(18)),
              //         color: ColorApp.background,
              //         onPressed: () {},
              //         child: Text(
              //           Words.register.tr,
              //           style: TextStyle(
              //             fontSize: context.getFontSize(16),
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white,
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 10,
                  right: 10,
                ),
                height: context.getHeight(0.2) * 400,
                width: context.getWidth(0.2) * 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.getWidth(3),
                            vertical: context.getHeight(2),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    // spreadRadius: 25,
                                    blurRadius: 25,
                                    offset: const Offset(0, 12),
                                    color: const Color.fromARGB(255, 27, 48, 65)
                                        .withOpacity(0.7),
                                  )
                                ],
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            width: context.getWidth(93),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 30.0, right: 10, left: 10, bottom: 30),
                              child: Column(
                                children: [
                                  CustomTextformfield(
                                    title: Words.userName.tr,
                                    controller: userName,
                                  ),
                                  const SizedBox(height: 10),
                                  CustomTextformfield(
                                    title: Words.email.tr,
                                    controller: email,
                                  ),
                                  const SizedBox(height: 10),
                                  CustomTextformfield(
                                    title: Words.password.tr,
                                    controller: password,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.getHeight(4),
                    ),
                    Text(
                      Words.forgotPassword.tr,
                      style: TextStyle(
                          fontSize: context.getFontSize(14),
                          color: const Color.fromARGB(255, 137, 135, 135),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      color: const Color.fromARGB(255, 98, 107, 137),
                      onPressed: () {},
                      child: Text(
                        Words.login.tr,
                        style: TextStyle(
                            fontSize: context.getFontSize(16),
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
