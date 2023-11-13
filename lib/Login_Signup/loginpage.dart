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
          body: Center(
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
                            'assets/images/logo.png',
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
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Email Address',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                enableSuggestions: true,
                                decoration: InputDecoration(
                                  hintText: 'Enter Your Email',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Color(0xffa75e44), width: 2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  isDense: true,
                                ),
                                cursorColor: Colors.black,
                              ),

                              SizedBox(
                                height: 15,
                              ),

                              // Password Text Field
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Password',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                enableSuggestions: false,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  hintText: 'Enter Your Password',
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: Color(0xffa75e44), width: 2)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  isDense: true,
                                ),
                                cursorColor: Colors.black,
                              ),
                              SizedBox(height: 50),

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
    );
  }
}
