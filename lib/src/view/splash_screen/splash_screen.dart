import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/constant/image_string.dart';
import 'package:ignition_lab4/src/view/signup_screen.dart/signup_screen.dart';

import '../core/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      Future.delayed(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => SignupScreen(),
        )),
      );
    });
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Image.asset(ImageString.splash_logo),
      ),
    );
  }
}
