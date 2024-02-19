import 'package:flutter/material.dart';

class AppTheme{
  // Declaracions de color
  static const mainColor = Color.fromARGB(255, 31, 31, 134);

  // Declaracion del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
     scaffoldBackgroundColor:Color.fromARGB(255, 124, 163, 235),
      appBarTheme:  const AppBarTheme(color: mainColor),
      textTheme: const TextTheme(headlineLarge: 
        TextStyle(
          color: mainColor,
          fontSize: 20.6,
          fontWeight: FontWeight.bold,
          fontFamily: 'sans-serif',
        ),
      ),
  );
}