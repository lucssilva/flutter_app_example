import 'package:flutter/material.dart';

class UI {
  UI._();
  static Color get primaryColor => Color.fromRGBO(224, 30, 105, 1);
  static Color get secundaryColor => Color.fromRGBO(251, 219, 231, 1);
  static Color get contrastColor => Color.fromRGBO(245, 245, 245, 1);
  static Color get errorColor => Color.fromRGBO(235, 87, 87, 1);

  static double get screenHeight =>
      MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height;

  static ThemeData get globalTheme => ThemeData(
      unselectedWidgetColor: contrastColor,
      scaffoldBackgroundColor: Colors.pinkAccent[700],
      accentColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        filled: true,
        fillColor: contrastColor,
        border: _border,
        focusedBorder: _border,
        enabledBorder: _border,
        errorBorder: OutlineInputBorder(borderSide: _err),
        errorStyle: TextStyle(color: errorColor),
        focusedErrorBorder: _border,
        labelStyle: TextStyle(color: Colors.grey[850]),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          primary: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
      primaryTextTheme: TextTheme(
        headline2: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontSize: 14,
          color: Colors.grey[850],
          fontWeight: FontWeight.w300,
        ),
        headline4: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ));

  static BorderSide get _bs => BorderSide.none;
  static BorderSide get _err => BorderSide(color: errorColor, width: 1);
  static OutlineInputBorder get _border => OutlineInputBorder(borderSide: _bs);
}
