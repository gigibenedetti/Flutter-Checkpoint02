import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

const _primarySwatch = Colors.pink;
const _appBarColor = Colors.black;
const _appBarTextColor = Colors.pink;
const _appBarIconColor = Colors.pink;

const _inputBorderColor = Colors.black;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: _primarySwatch,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      onPrimary: Colors.pink,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: _appBarTextColor, fontSize: 25),
    backgroundColor: _appBarColor,
    iconTheme: IconThemeData(color: _appBarIconColor),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: _inputBorderColor), borderRadius: BorderRadius.circular(10)),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: _primarySwatch,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      onPrimary: Colors.pink,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.pink, fontSize: 25),
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.pink),
  ),
);