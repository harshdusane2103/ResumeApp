import 'dart:async';

import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:3),(){Navigator.pushReplacementNamed(context,'/home');});
    return  Scaffold(

      body: Column(
        children: [
          Container(
            height:811.20,
            width: 384,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asstes/images/banner2.jpg'),
                )
            ),
          )
        ],
      ),
    );

  }
}
