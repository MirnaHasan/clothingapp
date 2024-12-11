

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClothingCategoryBody extends StatelessWidget {
   const ClothingCategoryBody({super.key, required this.name, required this.imageUrl, required this.price, required this.size});
  final String name ; 
  final String imageUrl;
  final String price ; 
  final String size ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: () {
       
     },


child:  Card(
  shadowColor: const Color.fromARGB(255, 57, 29, 142),
  color: const Color.fromARGB(255, 227, 222, 198),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network(imageUrl,
                   
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(name, 
                      style: const TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                     IconButton(
                      onPressed: (){
                        
                      }, 
                     icon: const Icon(
                  
                      Icons.add, 
                     color: Color.fromARGB(255, 23, 3, 83),
                     size: 30,)), 
                    
                      
                    ],
                  ),
                ),
              ],
            ),


     

          ),

    );
  }
}