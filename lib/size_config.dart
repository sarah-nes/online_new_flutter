import 'package:flutter/material.dart';

class SizeConfig{

  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static double Orientation Orientation;
  void init (BuildContext context){
    _mediaQueryData=MediaQuery.of(context);
    screenWidth= _mediaQueryData.size.width;
    screenHeight= _mediaQueryData.size.height;
    Orientation= _mediaQuertData.orientation;
    defaultSize= Orientation == orientation.landscape;
    ? screenHeight*0.024
    : screenWidth*0.024;
    

  }
}