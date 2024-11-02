

import 'package:clothes_app/View/Style/ScreenSize.dart/ScreenSize.dart';
import 'package:clothes_app/View/screens/homepagescreen.dart';
import 'package:clothes_app/View/screens/pagethree.dart';
import 'package:clothes_app/View/screens/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  PageController _controller=PageController();
  bool onlastpage=false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onlastpage = (index==2);
            });
          },
          children: [
            Homepagescreen(),
            Pagetwo(),
            Pagethree(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.96),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(onTap: (){
Get.to(()=>Pagetwo());

              },
              child: Text("Skip", 
              style: TextStyle(
                  fontSize:context.getFontSize(14.2) , 
                  color: Colors.black,
                ),),) , 
              SmoothPageIndicator(controller: _controller, count: 3),

              onlastpage?
              GestureDetector(
                onTap: (){
                  Get.to(()=>Pagethree());
                },
                child: Text("Done" , 
                style: TextStyle(
                  fontSize: context.getFontSize(14.2),
                  color: Colors.black,
                ),),
              )
              :
               GestureDetector(
                onTap: (){
                _controller.nextPage(duration: Duration(milliseconds: 500),
                 curve: Curves.easeIn);
                },
                child: Text("next", 
                style: TextStyle(
                  fontSize: context.getFontSize(14.2),
                  color: Colors.black,
                ),),
              )
            ],
          ) , 
          
        )
      ],
    );
  }
}