import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xFF5D9CEC);
  static Color colorLightGreen = Color(0xFFDFECDB);
  static Color colorRed = Color(0xFFEC4B4B);
  static Color colorGreen = Color(0xFF61E757);
  static Color colorBlack = Color(0xFF242424);
  static Color colorWhite = Color(0xFFFFFFFF);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      colorScheme: ColorScheme(
        primary: lightPrimary,
        onPrimary: colorWhite,
        secondary: colorLightGreen,
        onSecondary: colorWhite,
        background: colorLightGreen,
        error: Colors.red,
        onError: Colors.red,
        onSurface: Colors.black,
        surface: Colors.white,
        onBackground: lightPrimary,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: colorLightGreen,
      appBarTheme: AppBarTheme(
          centerTitle: false,
          color: lightPrimary,
          elevation: 0,
          iconTheme: IconThemeData(color: colorWhite)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: colorWhite, fontWeight: FontWeight.w700),
          subtitle1: TextStyle(
              fontSize: 20, color: lightPrimary, fontWeight: FontWeight.w400),
      bodyText1: TextStyle(
          fontSize: 12,
        color: colorBlack
      )
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightPrimary
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: lightPrimary,
        unselectedItemColor: Colors.grey,
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent,
      ));

}
