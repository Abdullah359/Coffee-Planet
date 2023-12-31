import 'dart:ui';
import 'package:coffeeplanet/Login_Signup/signuppage.dart';
import 'package:coffeeplanet/components/my_textfields.dart';
import 'package:coffeeplanet/navigation/Navigation_Bar/navigation_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/coffee_bg.jpeg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
              ),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(children: [
                        Center(
                          child: Hero(
                            tag: 'logo',
                            child: Image.asset(
                              'assets/images/logos.png',
                              height: 140,
                              width: 150,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Email Text Field
                                MyTextFormField(
                                  textInputType: TextInputType.emailAddress,
                                  capitalization: TextCapitalization.none,
                                  enableSuggestions: true,
                                  autocorrect: true,
                                  hintText: 'Your Email Address',
                                  fieldName: 'Email Address',
                                  onFieldSubmitted: (String value) {
                                    setState(() {
                                      _email = value;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),

                                // Password Text Field
                                MyPasswordFormField(
                                  fieldKey: _passwordFieldKey,
                                  fieldName: 'Password',
                                  hintText: 'Your Password',
                                  onFieldSubmitted: (String value) {
                                    setState(() {
                                      _password = value;
                                    });
                                  },
                                ),
                                const SizedBox(height: 50),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const NavigationPage()),
                                        (route) => false);
                                  },
                                  child: Container(
                                    height: 60,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffa75e44),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Don't have an account? ",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey.shade600)),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.to(const SignupPage());
                                    },
                                  text: 'Signup',
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xffa75e44),
                                      fontSize: 14),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
