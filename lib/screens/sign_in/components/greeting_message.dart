import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

Column greetingMessageBlock() {
  return Column(
    children: <Widget>[
      Text(
        'Welcome Back',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: kPrimaryColor,
            fontSize: getProPoScreenWidth(30),
            fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: getProPoScreenHeight(10),
      ),
      Text(
        'Sign In with your email and password',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: kTextColor,
            fontSize: getProPoScreenWidth(14),
            fontWeight: FontWeight.w300),
      ),
    ],
  );
}
