import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    fontFamily: "myFont",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    textButtonTheme: textButtonTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    elevatedButtonTheme: elevatedButtonTheme(),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.black),
    brightness: Brightness.light,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: mainColor,
      unselectedItemColor: Colors.grey,
      elevation: 0,
    ),
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder focusBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(35),
      bottomLeft: Radius.circular(35),
    ),
    borderSide: BorderSide(style: BorderStyle.solid, color: mainColor),
  );
  OutlineInputBorder disableBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(35),
      bottomLeft: Radius.circular(35),
    ),
    borderSide: BorderSide(style: BorderStyle.solid, color: Colors.grey),
  );
  return InputDecorationTheme(
    labelStyle: const TextStyle(
      color: mainColor,
    ),
    hintStyle: const TextStyle(
      color: mainColor,
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: disableBorder,
    focusedBorder: focusBorder,
    border: disableBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: mainColor),
    bodyText2: TextStyle(color: mainTextColor),
  );
}

ElevatedButtonThemeData elevatedButtonTheme() {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: mainColor,
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2.0),
      side: const BorderSide(color: mainColor),
    ),
  ));
}

TextButtonThemeData textButtonTheme() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black,
      backgroundColor: mainColor,
      elevation: 0.0,
      shadowColor: mainColor,
    ),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.black,
    elevation: 0,
    titleTextStyle: TextStyle(
        color: mainColor, fontSize: 20.0, fontWeight: FontWeight.w400),
    iconTheme: IconThemeData(color: mainColor),
  );
}
