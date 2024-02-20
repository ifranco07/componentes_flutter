//Definicion de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Constante de color primario
  static const primaryColor= Color.fromARGB(255, 255, 0, 0);
  //Constante de color secunadrio
  static const secondaryColor= Colors.black;
  //Constante de color de fondo
  static const backColor=  Color.fromARGB(197, 80, 130, 200);
  //Constante de tema
  static final ThemeData darkTheme= ThemeData.dark().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(
          color: primaryColor         
  ),
  textTheme: TextTheme(
    //Titulos muy grandes
    headlineLarge: GoogleFonts.abrilFatface(
      color:primaryColor,
      fontSize: 26.5,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
      decorationColor: primaryColor,
      decorationStyle: TextDecorationStyle.wavy,
      decorationThickness: 3.0,
    ),

    //Estilo para texto muy pequeño
    bodySmall: GoogleFonts.montserrat(
      color: secondaryColor,
      fontSize: 16.0
    )
  )
);
}