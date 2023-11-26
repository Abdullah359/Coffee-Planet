import 'package:coffeeplanet/components/my_textfields.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  String? _password;
  String? _email;
  String? _name;

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
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstIn),
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                // Name Text Field
                                MyTextFormField(
                                  textInputType: TextInputType.name,
                                  capitalization: TextCapitalization.words,
                                  enableSuggestions: true,
                                  autocorrect: true,
                                  hintText: 'Your Complete Name',
                                  fieldName: 'Your Name',
                                  onFieldSubmitted: (String value) {
                                    setState(() {
                                      _name = value;
                                    });
                                  },
                                ),

                                const SizedBox(
                                  height: 15,
                                ),

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
                                  height: 15,
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

                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffa75e44),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Register',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600),
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
                                    text: 'Already have an account? ',
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey.shade600)),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.back();
                                    },
                                  text: 'Login',
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
    );
  }
}
