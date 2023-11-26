import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField(
      {super.key,
      required this.fieldName,
      required this.hintText,
      required this.textInputType,
      required this.enableSuggestions,
      required this.autocorrect,
      this.fieldKey,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      required this.capitalization});

  final Key? fieldKey;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType textInputType;
  final bool enableSuggestions, autocorrect;
  final String hintText, fieldName;
  final TextCapitalization capitalization;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            widget.fieldName,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        TextFormField(
          style: GoogleFonts.poppins(color: Colors.white),
          keyboardType: widget.textInputType,
          enableSuggestions: widget.enableSuggestions,
          autocorrect: widget.autocorrect,
          textCapitalization: widget.capitalization,
          decoration: InputDecoration(
            hintText: widget.hintText,
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

class MyPasswordFormField extends StatefulWidget {
  const MyPasswordFormField(
      {super.key,
      required this.fieldName,
      required this.hintText,
      this.fieldKey,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted});

  final Key? fieldKey;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final String hintText, fieldName;

  @override
  State<MyPasswordFormField> createState() => _MyPasswordFormFieldState();
}

class _MyPasswordFormFieldState extends State<MyPasswordFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            widget.fieldName,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          key: widget.fieldKey,
          style: GoogleFonts.poppins(color: Colors.white),
          keyboardType: TextInputType.text,
          obscureText: _obscureText,
          onSaved: widget.onSaved,
          validator: widget.validator,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: GoogleFonts.poppins(color: Colors.white),
            isDense: true,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: FaIcon(
                  _obscureText
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,
                  color: Colors.brown[400],
                ),
              ),
            ),
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
