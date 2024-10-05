import 'dart:async';

import 'package:flutter/material.dart';


import 'package:harvoxx/onboarding/onboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
 
    Timer(const Duration(seconds: 5),
     () {Navigator.push
     (context, MaterialPageRoute(builder:
      (context)=> const onboardingScreen())); });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return 
     Scaffold( 
body:  
Center(
  child: Image.asset('assets/image 3.png', width: 295, height: 90,),
)
    );
  }
}