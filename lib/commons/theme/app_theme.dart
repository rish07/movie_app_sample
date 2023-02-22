import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static var isDarkTheme = false;

  static var appTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.montserratTextTheme(),
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );

  static ThemeData getTheme() => appTheme;
}
