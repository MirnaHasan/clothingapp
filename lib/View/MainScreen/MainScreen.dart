import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/screens/homepagescreen.dart';
import 'package:clothes_app/View/screens/onboardingscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen'),
        actions: [
          IconButton(onPressed: ()async{
            await FirebaseAuth.instance.signOut();
            Get.to(()=>Homepagescreen());

          }, icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisSpacing: context.getHeight(0.5),
            crossAxisSpacing: context.getWidth(1),
            childAspectRatio: 3 / 3.5,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                // horizontal: context.getWidth(1),
                top: context.getHeight(8),
              ),
              child: Container(
                height: context.getHeight(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: context.getHeight(6),
                      left: context.getWidth(1.5),
                      right: context.getWidth(1.5),
                      child: Image.network(
                        'https://th.bing.com/th/id/OIP.3viDpD-G6XBwJkdcWhzDLQAAAA?w=138&h=184&c=7&r=0&o=5&dpr=1.1&pid=1.7',
                        width: context.getWidth(45),
                        height: context.getHeight(20),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: context.getHeight(3),
                      left:context.getWidth(4),
                      child: Text(
                        'بلوز',
                        style: TextStyle(
                          fontSize: context.getFontSize(12),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(1.0, -2.0),
                              blurRadius: 4.0,
                              color: Colors.white,
                            ),
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 4.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: context.getHeight(0.5),
                      left: context.getWidth(4),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: context.getFontSize(12),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(1.0, -2.0),
                              blurRadius: 4.0,
                              color: Colors.white,
                            ),
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 4.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -2,
                      right: context.getWidth(2),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: context.getFontSize(18),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
