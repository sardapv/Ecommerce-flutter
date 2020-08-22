import 'package:ecommerce/screens/sign_in/components/greeting_message.dart';
import 'package:ecommerce/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            greetingMessageBlock(),
            SizedBox(
              height: getProPoScreenHeight(45),
            ),
            SignInForm(),
          ],
        ),
      ),
    );
  }
}
