import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Declaracions de color
  static const mainColor = Color.fromARGB(255, 31, 31, 134);
  static const backColor = Color.fromARGB(255, 124, 163, 235);
  static const superColor = Color.fromARGB(0, 68, 12, 172);
  static const chemaColor = Color.fromARGB(255, 255, 255, 255);
  static const medelColor = Color.fromARGB(0, 0, 0, 0);

  // Declaracion del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
     scaffoldBackgroundColor: backColor,
      appBarTheme: AppBarTheme(
        color: superColor,
        titleTextStyle: GoogleFonts.abel(
          color:superColor,
          fontSize: 20,
          fontWeight: FontWeight.normal
        ),
      ),
  iconTheme: const IconThemeData(
    color: chemaColor,
    size: 20,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        chemaColor,
      ),
      textStyle: MaterialStateProperty.all(
        GoogleFonts.pacifico(color: chemaColor)
      ),
      foregroundColor: MaterialStateProperty.all(
        chemaColor
      ),
    ),
  ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.montserrat(
          color: chemaColor,
          fontSize: 20.6,
          fontWeight: FontWeight.bold,
          decorationColor: superColor,
          decorationThickness: 3.0,
          fontStyle: FontStyle.italic,
          backgroundColor: superColor,
        ),
        headlineMedium: GoogleFonts.montserrat(
          color: chemaColor,
          fontSize: 15.6,
          fontWeight: FontWeight.bold,
          decorationColor: superColor,
          decorationThickness: 1.5,
        ),
        bodySmall: GoogleFonts.acme(
          color: chemaColor,
          fontSize: 15,
        ),
      ),
  );
}