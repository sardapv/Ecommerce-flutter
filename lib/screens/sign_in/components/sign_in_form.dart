import 'package:ecommerce/common/components/long_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomInputField(
            icon: Icons.email,
            hintText: "Enter your email",
            label: "Email",
            keyBoardType: TextInputType.emailAddress,
            obsecureText: false,
          ),
          SizedBox(
            height: getProPoScreenHeight(25),
          ),
          CustomInputField(
            icon: Icons.lock,
            hintText: "Enter your password",
            label: "Password",
            keyBoardType: TextInputType.text,
            obsecureText: true,
          ),
          SizedBox(
            height: getProPoScreenHeight(20),
          ),
          LongButton(
            text: "Login",
            onpress: () {},
          )
        ],
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key key,
    @required this.label,
    @required this.hintText,
    @required this.icon,
    @required this.keyBoardType,
    @required this.obsecureText,
  }) : super(key: key);
  final IconData icon;
  final String hintText;
  final String label;
  final TextInputType keyBoardType;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: TextFormField(
        obscureText: obsecureText,
        keyboardType: keyBoardType,
        cursorColor: kPrimaryLightColor,
        decoration: InputDecoration(
          suffixIcon: CustomSuffixIcon(
            icon: icon,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          labelText: label,
        ),
      ),
    );
  }
}

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({Key key, @required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProPoScreenWidth(15),
        getProPoScreenWidth(25),
        getProPoScreenWidth(15),
      ),
      child: Icon(
        icon,
        color: Colors.black54,
      ),
    );
  }
}
