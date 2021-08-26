import 'package:flutter/material.dart';
import 'package:soni_news_project/utils/colors.dart';

ThemeData theme = ThemeData(
  fontFamily: "Ubuntu",
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: kTextColor,
    ),
    bodyText2: TextStyle(
      color: kTextColor,
      fontSize: 14.0,
    ),
    headline1: TextStyle(
      color: kTextColor,
      fontSize: 20.0,
    ),
    headline6: TextStyle(
      color: kTextColor,
    ),
  ),
  splashColor: kTextColor,
  scaffoldBackgroundColor: kBackgroundColor,
  primaryColor: kPrimaryColor,
  buttonColor: kPrimaryColor,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: kPrimaryColor,
      primary: Color(0xff1C1F2E),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: kLightenbackgroundColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(
        color: kPrimaryColor,
        width: 2.0,
        style: BorderStyle.solid,
      ),
    ),
  ),
);
