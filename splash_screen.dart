

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/screens/location_access_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LocationAccessScreen(),));
      }
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 4, 102, 1), Color.fromARGB(255, 14, 163, 0)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/logo.png",
            scale: 3,
          ),
        ),
      ),
    );
  }
}
