import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 24,
    ),
    // Add more custom styles here using Google Fonts
  );
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
    // Add more custom styles here using Google Fonts for dark theme
  );
}