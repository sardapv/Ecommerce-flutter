import 'package:ecommerce/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static final String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign In'),
      ),
    );
  }
}
