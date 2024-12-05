import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';
class SplashSceen extends StatefulWidget {

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),
            (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SpaceWeightPage()),
              );
        });
  }





  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: <Widget>[
              Image.asset('assets/planet.png'),
              Text(
                "Space Weight Calculator",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        )
    );
  }
}



