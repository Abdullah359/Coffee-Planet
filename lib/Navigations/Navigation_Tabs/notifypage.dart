import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Text(
            'Notifications',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/notification.json'),
            Text(
              'Stay Tuned',
              style: GoogleFonts.poppins(),
            )
          ],
        ),
      ),
    ));
  }
}
