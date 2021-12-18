 //https://picsum.photos/200/300   //  ⌘ ñ
 //use lint
 //import '../widget/detailscreen.dart';
 import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';
 
 void main() {
   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
     statusBarColor: Colors.transparent,
     systemNavigationBarColor: Colors.transparent,
   ));
   runApp(const MyApp());
 }
 
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'homepage',
       debugShowCheckedModeBanner: false,
       home:  ,
 //routes: {  targetscreen.routeName:(ctx)=>targetscreen(),},
     );
   }
 }
 