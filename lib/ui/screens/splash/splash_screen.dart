import 'dart:async';

import '../onBoarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void screenDelay() {
    var duration = const Duration(seconds: 4);
    Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screenDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Image.asset(
            'images/scaffoldImage.png',
          )),
        ],
      ),
    );
  }
}
