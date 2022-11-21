import 'package:flutter/material.dart';

class SizeConfiguration{
  static double screenWidth = 0;
  static double screenHeight = 0;

  void init(BoxConstraints constraints) {
    screenHeight = constraints.maxHeight;
    screenWidth = constraints.maxWidth;
  }

  static double getScreenProportionHeight(double actualHeight) {
    return (actualHeight/900.0) * screenHeight;
  }
  static double getScreenProportionWidth(double actualWidth) {
    return (actualWidth/375.0) * screenWidth;
  }
}