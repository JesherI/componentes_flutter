// Definición de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255, 255, 0, 0);
  //Cosnatnate de color secundario
  static const secondaryColor = Color.fromARGB(155, 0, 0, 0);
  //constante de color de fondo
  static const backColor = Color.fromARGB(238, 237, 239, 240);
  static const backColor2 = Color.fromARGB(236, 46, 46, 46);
  //Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          primaryColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(fontSize: 25.0),
        ),
      ),
    ),
    textTheme: TextTheme(
      //Titulos muy grandes
      headlineLarge: GoogleFonts.outfit(
        color: primaryColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        // decoration: TextDecoration.underline,
        // decorationColor: primaryColor,
        // decorationStyle: TextDecorationStyle.wavy,
        // decorationThickness: 3.0,
      ),
      //estilo para text muy pequeño
      bodySmall: GoogleFonts.montserrat(
        color: secondaryColor,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        // decoration: TextDecoration.underline,
        // decorationColor: primaryColor,
        // decorationStyle: TextDecorationStyle.wavy,
        // decorationThickness: 3.0,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: secondaryColor,
        fontSize: 21.5,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
