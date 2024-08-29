import 'package:flutter/material.dart';
import 'package:practice/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FoodPanda UI Clone",
      home: SplashScreen(),
    );
  }
}