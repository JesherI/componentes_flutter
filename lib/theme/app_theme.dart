// Definición de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255, 255, 0, 0);
  //Cosnatnate de color secundario
  static const secondaryColor = Color.fromARGB(155, 115, 116, 114);
  //constante de color de fondo
  static const backColor = Color.fromARGB(218, 253, 213, 193);
  //Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
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
    ),
  );
}
