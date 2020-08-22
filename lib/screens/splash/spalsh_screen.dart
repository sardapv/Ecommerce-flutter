import 'package:ecommerce/screens/splash/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static final routeName = "/splash-screen";
  @override
  Widget build(BuildContext context) {
    // setting dimensions at root point for this screen
    // so its passed down to the children
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
