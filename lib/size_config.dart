import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mqData;
  static double swidth;
  static double sheight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mqData = MediaQuery.of(context);
    sheight = _mqData.size.height;
    swidth = _mqData.size.width;
    orientation = _mqData.orientation;
  }
}

// get proportional height as per screen size
double getProPoScreenHeight(double inputHeight) {
  return ((inputHeight / 812) * SizeConfig.sheight);
}

// get proportional width as per screen size
double getProPoScreenWidth(double inputWidth) {
  return (inputWidth / 375) * SizeConfig.swidth;
}
