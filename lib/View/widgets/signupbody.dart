

import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/Style/colorApp/colorsApp.dart';
import 'package:clothes_app/View/widgets/homepagebody.dart';
import 'package:clothes_app/View/widgets/signupbody.dart';
import 'package:clothes_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
    final TextEditingController phonenumber= TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
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
              // mainAxisAlignment: MainAxisAlignment.spaceAround,

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
                SizedBox(height: context.getHeight(0.3)*9,),
                
                Container(
                  padding:  EdgeInsets.only(
                    top: context.getWidth(0.9)*8,
                    left: context.getWidth(0.8)*2,
                    right: context.getWidth(0.8)*2,
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
                            padding:  EdgeInsets.only(
                                top: context.getHeight(0.6)*5,
                                 left:  context.getHeight(0.2)*5, 
                                 right: context.getHeight(0.2)*5, 
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
                                child: Column(
                                  children: [
                                    CustomTextformfield(
                                        title: "UserName",
                                        controller: userName),
                                    const SizedBox(height: 10),
                                    CustomTextformfield(
                                        title: "E-mail", controller: email),
                                    const SizedBox(height: 10),
                                    CustomTextformfield(
                                        title: "Password",
                                        controller: password),
                                    const SizedBox(height: 10),
                                      CustomTextformfield(
                                        title: "PhoneNumber",
                                        controller: phonenumber),
                                  ],
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
                            vertical: 10, horizontal:70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: const Color.fromARGB(255, 98, 107, 137),
                        onPressed: () {},
                        child: Text(
                          "sign up",
                          style: TextStyle(
                              fontSize: context.getFontSize(16),
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ) , 
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account ?" , 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: context.getFontSize(13)
                          ),),
                           TextButton(
                            onPressed: (){
                              Get.to(()=>Homepagebody());
                            },
                             child: Text("Log In" , 
                                                       style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: context.getFontSize(13) , 
                              color: Color.fromARGB(255, 204, 64, 35)
                                                       ),),
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
