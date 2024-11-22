import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';

import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/Style/colorApp/colorsApp.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';

import 'package:clothes_app/Controller/HomeController/homecntroller.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignUpBody extends StatefulWidget {
  SignUpBody({super.key});
  Homecntroller controller = Get.find();

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    userName.dispose();
    password.dispose();
    email.dispose();
    phonenumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.background,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Column(
              children: [
                Text(
                  "SignUp",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: context.getFontSize(34)),
                ),
                Text(
                  "Sign up to continue using this app",
                  style: TextStyle(
                    fontSize: context.getFontSize(17),
                    color: Colors.white,
                    // fontWeight: FontWeight.bold ,
                  ),
                ),
                SizedBox(
                  height: context.getHeight(0.3) * 9,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: context.getWidth(0.9) * 8,
                    left: context.getWidth(0.8) * 2,
                    right: context.getWidth(0.8) * 2,
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
                            padding: EdgeInsets.only(
                              top: context.getHeight(0.6) * 5,
                              left: context.getHeight(0.2) * 5,
                              right: context.getHeight(0.2) * 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      // spreadRadius: 25,
                                      blurRadius: 25,
                                      offset: const Offset(0, 12),
                                      color:
                                          const Color.fromARGB(255, 27, 48, 65)
                                              .withOpacity(0.7),
                                    )
                                  ],
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              height: context.getHeight(0.1) * 390,
                              width: context.getWidth(0.6) * 330,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, right: 10, left: 10, bottom: 30),
                                child: Form(
                                  key: formState,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CustomTextformfield(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Cant be empty";
                                              }
                                            },
                                            title: Words.userName.tr,
                                            controller: userName),
                                        const SizedBox(height: 10),
                                        CustomTextformfield(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Cant be empty";
                                              }
                                            },
                                            title: "E-mail",
                                            controller: email),
                                        const SizedBox(height: 10),
                                        CustomTextformfield(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Cant be empty";
                                              }
                                            },
                                            title: "Password",
                                            controller: password),
                                        const SizedBox(height: 10),
                                        CustomTextformfield(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Cant be empty";
                                              }
                                            },
                                            title: "PhoneNumber",
                                            controller: phonenumber),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: context.getFontSize(14),
                            color: const Color.fromARGB(255, 137, 135, 135),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: const Color.fromARGB(255, 98, 107, 137),
                        onPressed: () async {
                          if (formState.currentState!.validate()) {
                            try {
                              // ignore: unused_local_variable
                              final credential = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                email: email.text,
                                password: password.text,
                              );
                              Get.offAllNamed("/mainScreen");
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                Get.defaultDialog(
                                  title: "تنبيه",
                                  content: Text("Weak Password"),
                                );
                                print('The password provided is too weak.');
                              } else if (e.code == 'email-already-in-use') {
                                Get.defaultDialog(
                                  title: "تنبيه",
                                  content: Text(
                                      "the account already exists for that email"),
                                );
                                print(
                                    'The account already exists for that email.');
                              }
                            } catch (e) {
                              print(e);
                            }
                          } else
                            print("not valid");
                        },
                        child: Text(
                          "sign up",
                          style: TextStyle(
                              fontSize: context.getFontSize(16),
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account ?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: context.getFontSize(13)),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => Homepagebody());
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: context.getFontSize(13),
                                  color: Color.fromARGB(255, 204, 64, 35)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextformfield extends StatelessWidget {
  CustomTextformfield(
      {super.key,
      required this.title,
      required this.controller,
      required this.validator});
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
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
