import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class   AppTheme{
  //  constante dde  tema
static const primaryColor =  Color.fromARGB(250, 133, 5, 120);
static  const secondaryColor = Colors.black;

static  const backColor = Color.fromARGB(250, 269, 236, 233);

static  final  ThemeData lightTheme  =   ThemeData.light().copyWith(  
  scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(
          color: primaryColor,
        ),
        textTheme: TextTheme(
          //Titulos muy grandes
          headlineLarge: GoogleFonts.acme(
            color: primaryColor,
            fontSize: 26.5,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: primaryColor,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 1.0,
          ),

          //Estilo para  texto muy  pequeno
          bodySmall: GoogleFonts.montserrat(
            color: secondaryColor,
            
          )
        )
        
        );
}