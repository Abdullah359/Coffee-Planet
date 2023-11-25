import 'package:coffeeplanet/components/my_textfield.dart';
import '../Navigations/Navigation_Bar/navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  fit: BoxFit.cover),
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
                        SizedBox(
                          height: 20,
                        ),
                        Form(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Email Text Field
                                const MyTextFormField(
                                  textInputType: TextInputType.emailAddress,
                                  obscureText: false,
                                  enableSuggestions: true,
                                  autocorrect: true,
                                  hintText: 'Enter Your Email Address',
                                  fieldName: 'Email Address',
                                ),

                                const SizedBox(
                                  height: 15,
                                ),

                                // Password Text Field
                                const MyTextFormField(
                                  textInputType: TextInputType.text,
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  hintText: 'Enter Your Password',
                                  fieldName: 'Password',
                                ),
                                const SizedBox(height: 50),

                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                NavigationPage()),
                                        (route) => false);
                                  },
                                  child: Container(
                                    height: 60,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffa75e44),
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
                        SizedBox(height: 20),
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
                                      Navigator.pop(context);
                                    },
                                  text: 'Signup',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffa75e44), fontSize: 14),
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
