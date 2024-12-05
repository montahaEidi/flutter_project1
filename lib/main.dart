import 'package:flutter/material.dart';
import 'package:project1liu/splash.dart';

void main() {
  runApp (MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: SplashSceen()
     );
   }
 }

