import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xFF5843BE);
Color cardColor = const Color(0xFFF6F7F8);
Color greyFont = const Color(0xFF82868E);

TextStyle regularFont = GoogleFonts.poppins();
TextStyle mediumFont = GoogleFonts.poppins(fontWeight: FontWeight.w500);
TextStyle lightFont = GoogleFonts.poppins(fontWeight: FontWeight.w300);

ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  primary: primaryColor,
  textStyle: mediumFont.copyWith(fontSize: 18),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
);
