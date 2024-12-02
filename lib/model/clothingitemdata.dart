

import 'package:clothes_app/model/clothingitem.dart';
import 'package:clothes_app/model/outfit.dart';

const ClothingitemData= const[
ClothingItem(
  title: "رجالية",
 id: "c1", 
 imageUrl:"https://mir-s3-cdn-cf.behance.net/projects/404/a7b387105478967.5f7dc3e12cf5c.png"
 
  ) ,
  ClothingItem(
    title: "نسائية",
 id: "c2", 
 imageUrl:"https://static.rfstat.com/renderforest/images/v2/landing-pics/logo_landing/Clothing/clothing_logo_5.png"
 
  ) ,
  ClothingItem(
    title: "أطفال",
 id: "c3", 
 imageUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIUHAcgPaH2arkJl2gYEfGRcYbBSZqHzRQAQ&s"
 
  ) , 

] ;

const outfitData = const[
  Outfit("m1", ["c1"], "بلوزة", imageUrl, "medium", "76\$"),
  Outfit("m2", ["c1"], "بلوزة", imageUrl, "medium", "40\$"),
  Outfit("m3", ["c1"], "بلوزة", imageUrl, "medium", "20\$"),
  Outfit("m4", ["c1"], "بلوزة", imageUrl, "larg", "80\$"),
  Outfit("m5", ["c1"], "بلوزة", imageUrl, "larg", "80\$"),
  Outfit("m6", ["c1"], "بلوزة", imageUrl, "larg", "80\$"),
  Outfit('m7', ["c1"], "بنطال", imageUrl, "medium", "110\$"),
  Outfit("m8", ["c1"], "بنطال", imageUrl, "medium", "110\$"),
  Outfit("m9", ["c1"], "بنطال", imageUrl, "medium", "110\$"),
  Outfit("m10", ["c1"], "بنطال", imageUrl, "larg", "120\$"),
  Outfit("m11", ["c1"], "بنطال", imageUrl, "larg", "120\$"),
  Outfit("m12", ["c1"], "بنطال", imageUrl, "larg", "120\$"),

  Outfit("n1", ["c2"], "بلوزة", imageUrl, "medium", "50\$"),
  Outfit("n2", ["c2"], "بلوزة", imageUrl, "medium", "50\$"),
  Outfit("n3", ["c2"], "بلوزة", imageUrl, "medium", "50\$"),
  Outfit("n4", ["c2"], "بلوزة", imageUrl, "larg", "60\$"),
  Outfit("n5", ["c2"], "بلوزة", imageUrl, "larg", "60\$"),
  Outfit("n6", ["c2"], "بلوزة", imageUrl, "larg", "60\$"),
  Outfit('n7', ["c2"], "بنطال", imageUrl, "medium", "70\$"),
  Outfit("n8", ["c2"], "بنطال", imageUrl, "medium", "70\$"),
  Outfit("n9", ["c2"], "بنطال", imageUrl, "medium", "70\$"),
  Outfit("n10", ["c2"], "بنطال", imageUrl, "larg", "90\$"),
  Outfit("n11", ["c2"], "بنطال", imageUrl, "larg", "90\$"),
  Outfit("n12", ["c2"], "بنطال", imageUrl, "larg", "110\$"),
  Outfit("n13", ["c2"], "فستان", imageUrl, "medium", "100\$"),
  Outfit("n14", ["c2"], "فستان", imageUrl, "medium", "120\$"),
  Outfit("n15", ["c2"], "فستان", imageUrl, "medium", "150\$"),
  Outfit("n16", ["c2"], "فستان", imageUrl, "larg", "160\$"),
  Outfit("n17", ["c2"], "فستان", imageUrl, "larg", "190\$"),
  Outfit("n18", ["c2"], "فستان", imageUrl, "larg", "160\$"),

  Outfit("a1", ["c3"], "بلوزة", imageUrl, "small", "30\$"),
  Outfit("a2", ["c3"], "بلوزة", imageUrl, "small", "19\$"),
  Outfit("a3", ["c3"], "بلوزة", imageUrl, "small", "32\$"),
  Outfit("a4", ["c3"], "بلوزة", imageUrl, "small", "27\$"),
  Outfit("a5", ["c3"], "بلوزة", imageUrl, "medium", "36\$"),
  Outfit("a6", ["c3"], "بلوزة", imageUrl, "medium", "25\$"),
  Outfit('a7', ["c3"], "بنطال", imageUrl, "medium", "43\$"),
  Outfit("a8", ["c3"], "بنطال", imageUrl, "medium", "33\$"),
  Outfit("a9", ["c3"], "بنطال", imageUrl, "medium", "30\$"),
  Outfit("a10", ["c3"], "بنطال", imageUrl, "small", "21\$"),
  Outfit("a11", ["c3"], "بنطال", imageUrl, "small", "23\$"),
  Outfit("a12", ["c3"], "بنطال", imageUrl, "small", "20\$"),

];
