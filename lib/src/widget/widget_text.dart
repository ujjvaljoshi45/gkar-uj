import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText(
    {required String text,required Color textcolor,required FontWeight textweight,required double fontSize}) {
  return Text(text,
      style: GoogleFonts.montserrat(
        color: textcolor,
        fontWeight: textweight,
        fontSize: fontSize,
      ));
}
