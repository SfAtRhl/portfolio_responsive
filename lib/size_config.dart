import 'dart:math';

import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double refSize;

  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    final diagonalInches = sqrt(pow(screenWidth, 2) + pow(screenHeight, 2)) /
        MediaQuery.of(context).devicePixelRatio;

    final diagonalPixels =
        diagonalInches * MediaQuery.of(context).devicePixelRatio;

    refSize = sqrt(pow(diagonalPixels, 2) /
        (1 + pow(MediaQuery.of(context).textScaleFactor - 1, 2)));
  }
}

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1100 &&
    MediaQuery.of(context).size.width >= 650;

// bool isDesktop(BuildContext context) =>
//     MediaQuery.of(context).size.width >= 1100;

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 800 is the layout height that designer use
  return (inputHeight / 1024.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 1600.0) * screenWidth;
}

double calculateTextSize(double fontSize) {
  // Get the screen width and height
  final screenWidth = SizeConfig.screenWidth;
  final screenHeight = SizeConfig.screenHeight;

  // Calculate the diagonal screen size
  final screenDiagonal = sqrt(pow(screenWidth, 2) + pow(screenHeight, 2));

  // Calculate the scaling factor based on the diagonal screen size
  final scalingFactor = screenDiagonal / SizeConfig.refSize;
  // print(SizeConfig.refSize);

  // Calculate the scaled font size
  final scaledFontSize = fontSize * scalingFactor;

  return scaledFontSize;
}
