import 'package:flutter/material.dart';

class   AppTheme{
  //  constante dde  tema
static const primaryColor =  Color.fromARGB(33, 45, 56, 89);

static  const backColor = Color.fromARGB(47, 57, 87, 97);

static  final  ThemeData lightTheme  =   ThemeData.light().copyWith(  
  scaffoldBackgroundColor: backColor,
        primaryColor: const Color.fromARGB(56, 222, 107, 6),
        appBarTheme: const AppBarTheme(
          color: primaryColor,
        )
      );
}