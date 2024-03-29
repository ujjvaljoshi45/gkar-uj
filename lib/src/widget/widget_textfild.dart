import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final Color Textcolor;
  final FontWeight fontWeight;
  final String hint;
  final Color hintColor;
  const CustomTextField(
      {super.key,
      required this.onChanged,
      required this.Textcolor,
      required this.fontWeight,
      required this.hint,
      required this.hintColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 10),
      child: TextField(
       
        
        style: const TextStyle(color: Colors.white),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.montserrat(
            color: hintColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
