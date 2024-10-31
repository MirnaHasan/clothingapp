import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepagebody extends StatefulWidget {
  const Homepagebody({super.key});

  @override
  State<Homepagebody> createState() => _HomepagebodyState();
}

class _HomepagebodyState extends State<Homepagebody> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 98, 107, 137),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,

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
                const SizedBox(
                  height: 20,
                ),
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
                                child: Column(
                                  children: [
                                    customTextformfield("UserName", userName),
                                    const SizedBox(height: 10),
                                    customTextformfield("E-mail", email),
                                    const SizedBox(height: 10),
                                    customTextformfield("Password", password),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: context.getFontSize(14),
                            color: const Color.fromARGB(255, 137, 135, 135),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      MaterialButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: Color.fromARGB(255, 98, 107, 137),
                        onPressed: () {},
                        child: Text(
                          "Login",
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
      ),
    );
  }

  TextFormField customTextformfield(
      String title, TextEditingController controoler) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(
          title,
          style: TextStyle(
              fontSize: context.getFontSize(13),
              color: const Color.fromARGB(255, 137, 135, 135),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
