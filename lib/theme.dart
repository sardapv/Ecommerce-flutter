import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white, // by default sccaffold is white
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: "Muli",
    inputDecorationTheme: buildInputDecorationTheme(),
    appBarTheme: buildAppBarTheme(), // app bar theme
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
  );
}

InputDecorationTheme buildInputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: EdgeInsets.fromLTRB(40, 10, 10, 10),
    enabledBorder: buildOutlineInputBorder(),
    focusedBorder: buildOutlineInputBorderWhenFocused(),
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    focusedErrorBorder: buildOutlineInputBorderWhenError(),
    labelStyle: TextStyle(color: kTextColor),
    hintStyle: TextStyle(
      color: Colors.black54,
      fontSize: 15,
    ),
  );
}

OutlineInputBorder buildOutlineInputBorderWhenError() {
  return OutlineInputBorder(
    //border style when error
    borderRadius: BorderRadius.circular(30),
    gapPadding: 10,
    borderSide: BorderSide(color: Colors.red, width: 2),
  );
}

OutlineInputBorder buildOutlineInputBorderWhenFocused() {
  return OutlineInputBorder(
    //border style when focused
    borderRadius: BorderRadius.circular(30),
    gapPadding: 10,
    borderSide: BorderSide(color: kPrimaryColor, width: 2),
  );
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    //border style when displayed
    borderRadius: BorderRadius.circular(30),
    gapPadding: 10,
    borderSide: BorderSide(color: kTextColor, width: 1),
  );
}

AppBarTheme buildAppBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light, // to show status bar again
    iconTheme: buildIconDataTheme(),
    textTheme: buildTextTheme(),
  );
}

IconThemeData buildIconDataTheme() => IconThemeData(color: kTextColor);

TextTheme buildTextTheme() {
  return TextTheme(
    headline6: TextStyle(
      color: kTextColor,
      fontSize: 15,
    ),
  );
}
