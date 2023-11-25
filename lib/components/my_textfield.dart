import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      required this.fieldName,
      required this.hintText,
      required this.textInputType,
      required this.obscureText,
      required this.enableSuggestions,
      required this.autocorrect});

  final TextInputType textInputType;
  final bool obscureText, enableSuggestions, autocorrect;
  final String hintText, fieldName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            fieldName,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        TextFormField(
          style: GoogleFonts.poppins(color: Colors.white),
          keyboardType: textInputType,
          obscureText: obscureText,
          enableSuggestions: enableSuggestions,
          autocorrect: autocorrect,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(color: Colors.white),
            isDense: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    const BorderSide(color: Color(0xffa75e44), width: 2)),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          cursorColor: Colors.grey[300],
        ),
      ],
    );
  }
}
