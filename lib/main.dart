import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Login_Signup/loginpage.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: EasySplashScreen(
          logo: Image.asset('assets/images/logo.png', height: 600),
          showLoader: false,
          durationInSeconds: 3,
          navigator: const LoginPage(),
        ),
      ),
    );
  }
}
