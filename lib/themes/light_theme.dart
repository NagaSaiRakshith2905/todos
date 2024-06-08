import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData = ThemeData(
  fontFamily: GoogleFonts.lato().fontFamily,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF2F2F2),
    elevation: 1,
    iconTheme: IconThemeData(
      color: Color(0xFF212121),
    ),
  ),
);
