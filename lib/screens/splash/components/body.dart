import 'package:ecommerce/common/components/long_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  List splashList = [
    {
      "text": 'Welcome to E-MART, Let\'s shop!',
      "image": "assets/images/splash_screen/splash1.png"
    },
    {
      "text": 'Lots of options to choose from',
      "image": "assets/images/splash_screen/splash2.png"
    },
    {
      "text": 'We ensure on time delivery',
      "image": "assets/images/splash_screen/splash3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: splashList.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashList[index]["text"],
                  image: splashList[index]["image"],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(splashList.length,
                        (index) => buildSliderIndicator(index)),
                  ),
                  Spacer(flex: 2),
                  LongButton(
                    text: 'Shop Now',
                    onpress: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer(),
                ],
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildSliderIndicator(index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.all(3),
      height: 8,
      width: currentIndex == index ? 20 : 8,
      decoration: BoxDecoration(
        color: currentIndex == index ? kPrimaryColor : Colors.black45,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
