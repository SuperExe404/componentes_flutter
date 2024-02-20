import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Declaracions de color
  static const mainColor = Color.fromARGB(255, 31, 31, 134);
  static const backColor = Color.fromARGB(255, 124, 163, 235);
  static const superColor = Color.fromARGB(0, 34, 8, 83);
  static const chemaColor = Color.fromARGB(255, 255, 255, 255);

  // Declaracion del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
     scaffoldBackgroundColor: backColor,
      appBarTheme:  const AppBarTheme(color: mainColor),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.montserrat(
          color: const Color.fromARGB(0, 0, 0, 0),
          fontSize: 20.6,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: mainColor,
          decorationThickness: 3.0,
          fontStyle: FontStyle.italic,
        ),
        bodySmall: GoogleFonts.acme(
          color: superColor,
          fontSize: 15,
        ),
      ),
  );
}