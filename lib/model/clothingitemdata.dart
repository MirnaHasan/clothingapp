

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
  Outfit("m1", ["c1"], "بلوزة", 
  
  "https://ae-pic-a1.aliexpress-media.com/kf/S12669c1c40434315b5731555a281b084V/2023.jpg_640x640Q90.jpg_.webp", "medium", "76\$"),
  Outfit("m2", ["c1"], "بلوزة",
   "https://m.media-amazon.com/images/I/718Vn+6KH5L._AC_SY300_SX300_.jpg",
  
  
   "medium", "40\$"),
  Outfit("m3", ["c1"], "بلوزة",
   "https://img.joomcdn.net/240301280b737d4b9a002a6cdf6400fd76f03a5f_original.jpeg",
   "medium", "20\$"),
  Outfit("m4", ["c1"], "بلوزة",
   "https://litb-cgis.rightinthebox.com/images/296x396/202311/bps/product/inc/ivjxdq1700654327264.jpg",
    "larg", "80\$"),
  Outfit("m5", ["c1"], "بلوزة"
  , "https://img.joomcdn.net/0802547e11d16f20cb6e0f49308d004868f63af3_400_400.jpeg",
   "larg", "80\$"),
  Outfit("m6", ["c1"], "بلوزة",
   "https://m.media-amazon.com/images/I/31emaflqI5L._AC_.jpg",
    "larg", "80\$"),
  Outfit('m7', ["c1"], "بنطال",
   "https://lh7-us.googleusercontent.com/iWbKhm03UfVfAEXxBO7cyTS5NKSMZxHifni39BL0DYVHrY5SnFETreU3yJ9VE_nl4Fmj9zxQqBQC1KddUuDbiewXjlSq-J16VzRHE5319c7vLXFXMjTJSxghkiapYkTzMRWxMdR0VMdzMzVe_IHVgto",
    "medium", "110\$"),
  Outfit("m8", ["c1"], "بنطال",
   "https://ae01.alicdn.com/kf/S2d9f80e2e4104c6dbda672b8bc725f27G/-.jpg", 
   "medium", "110\$"),
  Outfit("m9", ["c1"], "بنطال",
   "https://m.media-amazon.com/images/I/71GIUW3UqBL.jpg",
    "medium", "110\$"),
  Outfit("m10", ["c1"], "بنطال",
   "https://dfcdn.defacto.com.tr/376/D5866AX_24AU_NM55_01_01.jpg", "larg", "120\$"),
  Outfit("m11", ["c1"], "بنطال",
   "https://cdn.dsmcdn.com/mnresize/600/-/ty1012/product/media/images/prod/SPM/PIM/20231007/09/1ae27eb3-4479-39a0-95ee-0af29a6243e8/1_org_zoom.jpg",
    "larg", "120\$"),
  Outfit("m12", ["c1"], "بنطال",
   "https://cdn.mart.ps/172292-large_default/%D8%A8%D9%86%D8%B7%D9%84%D9%88%D9%86-%D8%AC%D9%8A%D9%86%D8%B2-%D8%B4%D8%A8%D8%A7%D8%A8%D9%8A-%D8%A8%D9%88%D9%8A-%D9%81%D8%B1%D9%86%D8%AF-john-lucca-%D9%84%D9%88%D9%86-%D9%83%D8%AD%D9%84%D9%8A.jpg",
    "larg", "120\$"),

  Outfit("n1", ["c2"], "بلوزة",
   "https://img4.dhresource.com/webp/m/0x0/f3/albu/ry/s/05/a05d2832-df38-4ce1-97ef-c89b486ef819.jpg",
    "medium", "50\$"),
  Outfit("n2", ["c2"], "بلوزة",
   "https://matjar-badr.com/wp-content/uploads/2023/04/unnamed-file-957.jpg",
    "medium", "50\$"),
  Outfit("n3", ["c2"], "بلوزة",
   "https://come4buy.com/cdn/shop/products/elegant-tops-long-sleeve-v-neck-ladies-230110001004.jpg?v=1686919508",
    "medium", "50\$"),
  Outfit("n4", ["c2"], "بلوزة", 
  "https://cdn.salla.sa/ePdQEx/757b8014-732e-4a55-b726-ca29b34a62ac-845.47311095984x1000-4IC4TIrUELVIrNP5D6ehlTDBBMki6RVQ75mowM4b.jpg",
   "larg", "60\$"),
  Outfit("n5", ["c2"], "بلوزة",
   "https://ae01.alicdn.com/kf/S70560b70082c4c22a137799b8d6f457el/-.jpg",
    "larg", "60\$"),
  Outfit("n6", ["c2"], "بلوزة",
   "https://ae01.alicdn.com/kf/S70560b70082c4c22a137799b8d6f457el/-.jpg",
    "larg", "60\$"),
  Outfit('n7', ["c2"], "بنطال",
   "https://qudraworld.com/wp-content/uploads/2023/06/3-min-1.png.webp",
    "medium", "70\$"),
  Outfit("n8", ["c2"], "بنطال", 
  "https://images-eu.ssl-images-amazon.com/images/I/41EORpOCBuL._AC_SR462,693_.jpg",
   "medium", "70\$"),
  Outfit("n9", ["c2"], "بنطال",
   "https://images-eu.ssl-images-amazon.com/images/I/51eej4KuWFL._AC_SR462,693_.jpg",
    "medium", "70\$"),
  Outfit("n10", ["c2"], "بنطال",
   "https://media.zid.store/8d85c518-e4b6-427b-a853-c4ac4d4284c1/3c390528-2c35-4788-8232-f648052b50a8.jpg", 
   "larg", "90\$"),
  Outfit("n11", ["c2"], "بنطال",
   "https://ae01.alicdn.com/kf/S3a264e8c810641ec9b0c041f9b98aec0k.jpg_640x640q90.jpg",
    "larg", "90\$"),
  Outfit("n12", ["c2"], "بنطال",
   "https://ae01.alicdn.com/kf/S124db37c80c4494091f4cea4d9d874b3r.jpg_.webp", 
   "larg", "110\$"),
  Outfit("n13", ["c2"], "فستان",
   "https://ae-pic-a1.aliexpress-media.com/kf/S6c611074c0b94950b68fa8c7a223c813Q/2023.jpg_640x640Q90.jpg_.webp",
    "medium", "100\$"),
  Outfit("n14", ["c2"], "فستان", 
  "https://ae-pic-a1.aliexpress-media.com/kf/S0c56919627564f47b86d9dceedf29f97j/-.jpg_640x640Q90.jpg_.webp",
   "medium", "120\$"),
  Outfit("n15", ["c2"], "فستان", 
  "https://jooeri.com/wp-content/uploads/2023/08/WhatsApp-Image-2023-08-22-at-12.00.51-AM.jpeg",
   "medium", "150\$"),
  Outfit("n16", ["c2"], "فستان",
   "https://www.almrsal.com/wp-content/uploads/2022/10/cc92f3a14e01aff38c93398574902b6f.jpg?x23329",
    "larg", "160\$"),
  Outfit("n17", ["c2"], "فستان", 
  "https://m.media-amazon.com/images/I/5108UORGxcL._AC_SY741_.jpg",
   "larg", "190\$"),
  Outfit("n18", ["c2"], "فستان",
   "https://cdn.salla.sa/dVBOK/PZl5qCcqVjNeuZAIuQSsDbw5BVvNAGyT70kY9CDG.jpg",
    "larg", "160\$"),

  Outfit("a1", ["c3"], "فستان",
   "https://sc01.alicdn.com/kf/Hb04ff203283549efa5a9a415764e4a52o/Kids-and-Children-s-Clothes-Summer-Girls.jpg", 
   "small", "30\$"),
  Outfit("a2", ["c3"], "فستان", 
  "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhei-ja3zhXzNcoZDztU6v3rEgD5IbjNBEXsjDACA0EI6QNOqWWsL3hnnvwtbiBIP9FhQYGrXBzSVveSuY8kiqSQtTM9M0BXFgKSjVednI9HUELMDI_LUlgiJhq4-SsTjpNuT17cazRQD2vMO0Xk4HQxNVSWj3sTZWVpF5RlRLbTHq1anyX0_HiRkQV/s980/Polish_%D9%A2%D9%A0%D9%A2%D9%A4%D9%A0%D9%A3%D9%A0%D9%A6_%D9%A2%D9%A1%D9%A1%D9%A5%D9%A1%D9%A1%D9%A2%D9%A5%D9%A9%5B1%5D.webp", 
  "small", "19\$"),
  Outfit("a3", ["c3"], "فستان",
   "https://s.alicdn.com/@sc04/kf/H662f8306988f405294296a7462547213n.jpg",
    "small", "32\$"),
  Outfit("a4", ["c3"], "فستان",
   "https://s.alicdn.com/@sc04/kf/Hd43a8652b2134054a3f474c2f6cc74f0x.jpg",
    "small", "27\$"),
  Outfit("a5", ["c3"], "بلوزة",
   "https://ae-pic-a1.aliexpress-media.com/kf/S6e07d42fdbf44f45af94b285a0e18adft.jpg_300x300Q70.jpg_.webp",
    "medium", "36\$"),
  Outfit("a6", ["c3"], "بلوزة",
   "https://ae01.alicdn.com/kf/S38e27e94f90a4a69b905aa4c4937662fE.jpg_640x640q90.jpg",
    "medium", "25\$"),
  Outfit('a7', ["c3"], "بلوزة",
   "https://ae01.alicdn.com/kf/Se3421b4dee244430b5cb3ebd03eff6d4a.jpg",
    "medium", "43\$"),
  Outfit("a8", ["c3"], "بنطال",
   "https://www.hsreat.com/attachments/%D8%A8%D9%86%D8%A7%D8%B7%D9%8A%D9%84-%D8%AC%D9%8A%D9%86%D8%B2-%D9%84%D9%84%D8%A3%D8%B7%D9%81%D8%A7%D9%84-%D8%A8%D8%A7%D9%84%D9%84%D9%88%D9%86-%D8%A7%D9%84%D8%B1%D9%85%D8%A7%D8%AF%D9%8A-8-jpg.165798/",
    "medium", "33\$"),
  Outfit("a9", ["c3"], "بنطال",
   "https://kidiastore.com/wp-content/uploads/2024/06/uh6u7-1-300x300.jpg",
    "medium", "30\$"),
  Outfit("a10", ["c3"], "بنطال",
   "https://img.kwcdn.com/product/Fancyalgo/VirtualModelMatting/6eb770b08b7cd3e0b69281adcd544f7a.jpg?imageMogr2/auto-orient%7CimageView2/2/w/800/q/70/format/webp",
    "small", "21\$"),
  Outfit("a11", ["c3"], "بنطال",
   "https://ae-pic-a1.aliexpress-media.com/kf/S88985a18844d4eb096f523d773700aaaj.jpg_300x300Q70.jpg_.webp", 
   "small", "23\$"),
  Outfit("a12", ["c3"], "بنطال",
   "https://media.zid.store/ebb78f40-1322-4dd2-95fd-08a543c377ff/aa5f7720-e77c-4528-b648-e8abd3c2bc1e.jpg",
    "small", "20\$"),

];
