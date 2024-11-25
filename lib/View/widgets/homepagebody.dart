import 'package:clothes_app/Helper/Log/LogApp.dart';
import 'package:clothes_app/Helper/Translation/LanguageTranslation.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/Style/ScreenSize.dart/SizeBuilder.dart';
import 'package:clothes_app/View/Style/colorApp/colorsApp.dart';
import 'package:clothes_app/View/route/routeApp.dart';
import 'package:clothes_app/Controller/HomeController/homecntroller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Homepagebody extends StatefulWidget {
  Homepagebody({super.key});
  Homecntroller controller = Get.find();

  @override
  State<Homepagebody> createState() => _HomepagebodyState();
}

class _HomepagebodyState extends State<Homepagebody> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    userName.dispose();
    password.dispose();
    email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.background,
      body: Column(
        children: [
          SizedBox(height: context.getHeight(60)),
          Text(
            Words.login.tr,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: context.getFontSize(34)),
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
            height: context.getHeight(20),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: context.getHeight(40),
              ),
              width: context.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizeBuilder(
                      baseSize: const Size(350, 220),
                      height: context.getMinSize(220),
                      width: context.getMinSize(350),
                      child: Builder(builder: (context) {
                        return Container(
                          height: context.sizeBuilder.height,
                          width: context.sizeBuilder.width,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                // spreadRadius: 25,
                                blurRadius: 25,
                                offset: const Offset(0, 12),
                                color: const Color.fromARGB(
                                  255,
                                  27,
                                  48,
                                  65,
                                ).withOpacity(0.7),
                              )
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: context.getWidth(6),
                              right: context.getWidth(6),
                              top: context.getHeight(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: context.getHeight(8)),
                                CustomTextformfield(
                                    title: Words.userName.tr, controller: userName),
                                SizedBox(height: context.getHeight(8)),
                                CustomTextformfield(
                                    title: Words.email.tr, controller: email),
                                SizedBox(height: context.getHeight(8)),
                                CustomTextformfield(
                                    title: Words.password.tr, controller: password),
                                // const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: context.getHeight(30),
                    ),
                    InkWell(
                      onTap: ()async{

if(email.text==""){
   Get.defaultDialog(
                            title: "تنبيه",
                            content: const Text(
                              textAlign: TextAlign.center,
                              "الرجاء كتابة بريدك الإلكتروني ثم الضغط على forgot password?",
                            ),
                          );
                          return ;

  


}
try{ await FirebaseAuth.instance.sendPasswordResetEmail(
                          email: email.text);
                          Get.defaultDialog(
                           
                            title: "تنبيه",
                            content: Text(
                              textAlign: TextAlign.center,
                              "تم إرسال رابط إلى بريدك الإلكتروني لإعادة تعيين كلمة السر ",
                            ),
                          );
                          
                          
                          }catch(e){
                             Get.defaultDialog(
                         
                            title: "فشل",
                            content: const Text(
                              textAlign: TextAlign.center,
                              "الرجاء التاأكد من أن البريد الإلكتروني الذي تم إدخاله صحيح وثم أعد المحاولة",
                            ),
                          );
                        }
                      },
                      child: Text(
                        Words.forgotPassword.tr,
                        style: TextStyle(
                            fontSize: context.getFontSize(14),
                            color: const Color.fromARGB(255, 137, 135, 135),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: context.getHeight(30),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.symmetric(
                          vertical: context.getHeight(12),
                          horizontal: context.getHeight(40)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      color: const Color.fromARGB(255, 98, 107, 137),
                      onPressed: () async {
                        if (userName.text.isEmpty ||
                            email.text.isEmpty ||
                            password.text.isEmpty) {
                          Get.defaultDialog(
                            title: "تنبيه",
                            content: const Text("all fields are required"),
                          );
                        } else if (password.text.length < 6) {
                          Get.snackbar(
                            'Warning',
                            'Password must be at least 6 characters',
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                            messageText: const Text(
                              'Password must be at least 6 characters',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            icon: const Icon(
                              Icons.warning,
                              color: Colors.white,
                            ),
                          );
                        }

                        try {
                          // ignore: unused_local_variable
                          final credential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: email.text,
                            password: password.text,
                          );
                          if(credential.user!.emailVerified){
                            Get.offAllNamed(RouteApp.mainScreen);
                          }else{
                             FirebaseAuth.instance.currentUser!.sendEmailVerification();
                            Get.defaultDialog(
                              title: "تنبيه",

                              content:
                              Text(textAlign: TextAlign.center,
                              "الرجاء التوجه الى بريدك و الضغط على رابط التحقق من البريد حتى يتم تفعيل حسابك",)
                               
                            );


                          }
                          
                        } on FirebaseAuthException catch (e) {
                          // invalid-email
                          //invalid-credential
                          logError('message _______ ${e.email}');

                          if (e.code == 'invalid-email') {
                            Get.defaultDialog(
                              title: "تنبيه",
                              content:
                                  const Text("no user found for that email"),
                            );
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            Get.defaultDialog(
                              title: "تنبيه",
                              content: const Text(
                                  "wrong password provided for that user"),
                            );
                            print('Wrong password provided for that user.');
                          }
                        }
                      },
                      child: Text(
                       Words.login.tr,
                        style: TextStyle(
                            fontSize: context.getFontSize(16),
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: context.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Words.dontHaveAccount.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: context.getFontSize(13)),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.offAllNamed(RouteApp.signUp);
                          },
                          child: Text(
                            Words.register.tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: context.getFontSize(13),
                                color: const Color.fromARGB(255, 204, 64, 35)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextformfield extends StatefulWidget {
  const CustomTextformfield({
    super.key,
    required this.title,
    required this.controller,
  });
  final String title;
  final TextEditingController controller;

  @override
  State<CustomTextformfield> createState() => _CustomTextformfieldState();
}

class _CustomTextformfieldState extends State<CustomTextformfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
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
          widget.title,
          style: TextStyle(
              fontSize: context.getFontSize(13),
              color: ColorApp.background,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
