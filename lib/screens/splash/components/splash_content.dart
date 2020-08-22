import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/widgets.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, @required this.text, @required this.image})
      : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'E-MART',
          style: TextStyle(
            fontSize: getProPoScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style:
              TextStyle(color: kTextColor, fontSize: getProPoScreenWidth(12)),
        ),
        Spacer(),
        Image.asset(
          image,
          height: getProPoScreenHeight(265),
          width: getProPoScreenWidth(400),
        )
      ],
    );
  }
}
