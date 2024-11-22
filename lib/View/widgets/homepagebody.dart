
import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/Style/colorApp/colorsApp.dart';
import 'package:clothes_app/View/widgets/signupbody.dart';
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
 GlobalKey <FormState> formState = GlobalKey<FormState>();
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(

              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: context.getFontSize(34)),
                ),
                Text(
                  "Welcome To Clothes Store",
                  style: TextStyle(
                    fontSize: context.getFontSize(20),
                    color: Colors.white,
                    // fontWeight: FontWeight.bold ,
                  ),
                ),
                // SizedBox(height: 30,),
                
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
                            padding: const EdgeInsets.only(
                                top: 30.0, left: 10, right: 10),
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
                              height: context.getHeight(0.1) * 350,
                              width: context.getWidth(0.6) * 300,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, right: 10, left: 10, bottom: 30),
                                child: Form(
                                  key: formState,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CustomTextformfield(
                                          validator:(val){
                                            if(val!.isEmpty){
                                              return "Cant Be Empty";
                                            }
                                          } ,
                                            title: "UserName",
                                            controller: userName),
                                        const SizedBox(height: 10),
                                        CustomTextformfield(
                                          validator: (val){
                                            if(val!.isEmpty){
                                              return "Cant Be Empty";
                                            }
                                          } ,
                                            title: "E-mail", controller: email),
                                        const SizedBox(height: 10),
                                        CustomTextformfield(
                                          validator: (val){
                                            if(val!.isEmpty){
                                              return "Cant Be Empty";
                                            }
                                          } ,
                                            title: "Password",
                                            controller: password),
                                        const SizedBox(height: 10),
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
                            vertical: 10, horizontal:70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: const Color.fromARGB(255, 98, 107, 137),
                        onPressed: () async {
                         if(
                          formState.currentState!.validate()
                         ){ try {
          // ignore: unused_local_variable
          final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          
         email: email.text,
         password: password.text,
          );
             Get.offAllNamed('/mainScreen');
              } 
              on FirebaseAuthException catch (e) {
               if (e.code == 'user-not-found') {
                Get.defaultDialog(
                  title: "تنبيه" ,
                  content: Text("no user found for that email") ,


                );
                  print('No user found for that email.');}
       else if (e.code == 'wrong-password') {
        Get.defaultDialog(
                  title: "تنبيه" ,
                  content: Text("wrong password provided for that user") ,


                );
              print('Wrong password provided for that user.');
                   }
                    }




                         }else print("not valid");
                 

                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: context.getFontSize(16),
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ) , 
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account ? " , 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: context.getFontSize(13)
                          ),),
                           TextButton(
                            onPressed: (){
                              Get.offAllNamed("/signUp");
                            },
                             child: Text("Register" , 
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
   CustomTextformfield({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
  });
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator ;

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
