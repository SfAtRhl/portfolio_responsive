import 'package:flutter/material.dart';
import 'package:portfolio/size_config.dart';

// All of our constant stuff

const kSolidHeading = Color(0xFF42446E);
const kDarkContent = Color(0xFF666666);
const kSolidHeadingDarkmode = Color(0xFFCCCCCC);
const kLightContent = Color(0xFFA7A7A7);
const kDarkColor = Color(0xFF191919);
const kButtonText = Color(0xFF018C0F);
const kButtonSuccess = Color(0xFFD7FFE0);
const kGradientHeading = LinearGradient(colors: [
  Color(0xFF13B0F5),
  Color(0xFFE70FAA),
]);

const kDefaultPadding = 20.0;

var kHeaderStyler = TextStyle(
  fontSize: getProportionateScreenWidth(42),
  fontWeight: FontWeight.w700,
  color: kSolidHeading,
  // height: getProportionateScreenHeight(52),
);
var kNavStyler = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.w500,
  color: kDarkContent,
  // height: getProportionateScreenHeight(52),
);
var kNavStylerHover = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.w600,
  color: kDarkColor,
  // height: getProportionateScreenHeight(52),
);
var kUnderHeaderStyle = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.w400,
  color: kDarkContent,
  // height: getProportionateScreenHeight(26),
);
var kUnderStyle = TextStyle(
  fontSize: getProportionateScreenWidth(12),
  fontWeight: FontWeight.w500,
  color: kLightContent,
  // height: getProportionateScreenHeight(26),
);
var kButtonStyle = TextStyle(
  fontSize: getProportionateScreenWidth(9),
  fontWeight: FontWeight.w600,
  color: kButtonText,
  // height: getProportionateScreenHeight(26),
);
var kHeaderProjectStyle = TextStyle(
  fontSize: getProportionateScreenWidth(18),
  fontWeight: FontWeight.w700,
  color: kDarkColor,
  // height: getProportionateScreenHeight(26),
);
var kProjectStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.w300,
  color: kDarkContent,
  // height: getProportionateScreenHeight(26),
);
