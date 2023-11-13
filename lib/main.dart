import 'package:coffeeplanet/Login_Signup/signuppage.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: EasySplashScreen(
          logo: Image.asset('assets/images/logo.png', height: 300),
          backgroundColor: Colors.white,
          showLoader: false,
          durationInSeconds: 3,
          navigator: const SignupPage(),
        ),
      ),
    );
  }
}