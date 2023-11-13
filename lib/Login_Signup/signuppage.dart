import 'package:coffeeplanet/Login_Signup/loginpage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
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
                              // Name Text Field
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Your Name',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'Enter Your Name',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Colors.brown, width: 2),
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
                                decoration: InputDecoration(
                                  hintText: 'Enter Your Email',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Colors.brown, width: 2),
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
                                          color: Colors.brown, width: 2)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  isDense: true,
                                ),
                                cursorColor: Colors.black,
                              ),
                              SizedBox(height: 50),

                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffa75e44),
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
                      SizedBox(height: 20),
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()),
                                    );
                                  },
                                text: 'Login',
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
