import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_fit/features/home/ui/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => Home()));
    });
  }


  @override
  Widget build(BuildContext context) {
      return Container(
        color: Colors.teal,
        child: const Center(
          child: Image(image: AssetImage('assets/TECHFIT.png'),
        ),
      ));
  }
}
