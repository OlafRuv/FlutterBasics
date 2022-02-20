
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.orange;
  static const Color primaryDarker = Colors.deepOrange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: primary,
    ),

    // AppBarTheme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation:0
    ),

    // TextButtonTheme
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    // FloatingActionButtonTheme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),

    // ElevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppTheme.primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary),
      enabledBorder: OutlineInputBorder(      
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        )   
      ),  
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        )
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryDarker),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        )
      ),
      // border: OutlineInputBorder(
      //   borderSide: BorderSide(color: AppTheme.primary),
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(10),
      //     topRight: Radius.circular(10)
      //   )
      // )
    )

  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation:0
    ),
    scaffoldBackgroundColor: Colors.black
  );







}