import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkThemeData = ThemeData(
  fontFamily: GoogleFonts.lato().fontFamily,
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF212121),
    elevation: 1,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
);
