import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size_config.dart';
// import 'package:portfolio/size_config.dart';

// All of our constant stuff
// SizeConfig().init(context);

const kSolidHeading = Color(0xFF42446E);
const kDarkContent = Color(0xFF666666);
const kSolidHeadingDarkmode = Color(0xFFCCCCCC);
const kLightContent = Color(0xFFA7A7A7);
const kDarkColor = Color(0xFF191919);

const kStrongDarkColor = Color(0xFF000000);

const kButtonText = Color(0xFF018C0F);
const kButtonSuccess = Color(0xFFD7FFE0);
const kGradientHeading = LinearGradient(colors: [
  Color(0xFF13B0F5),
  Color(0xFFE70FAA),
]);

const kDefaultPadding = 20.0;

var kHeaderStyler = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontSize: calculateTextSize(35),
    fontWeight: FontWeight.w700,
    color: kSolidHeading,
    // height: getProportionateScreenHeight(52),
  ),
);
var kTechStack = TextStyle(
  fontSize: getProportionateScreenWidth(12),
  fontWeight: FontWeight.w700,
  color: kDarkColor,
);
var kNavStyler = GoogleFonts.acme(
    textStyle: TextStyle(
  fontSize: calculateTextSize(20),
  fontWeight: FontWeight.w500,
  color: kDarkContent,
  // height: getProportionateScreenHeight(52),
));
var kNavStylerHover = GoogleFonts.acme(
    textStyle: TextStyle(
  fontSize: calculateTextSize(20),
  fontWeight: FontWeight.w500,
  color: kStrongDarkColor,
  // height: getProportionateScreenHeight(52),
));
var kUnderHeaderStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontSize: calculateTextSize(18),
    fontWeight: FontWeight.w400,
    color: kDarkContent,
    // height: getProportionateScreenHeight(26),
  ),
);
var kUnderStyle = TextStyle(
  fontSize: calculateTextSize(12),
  fontWeight: FontWeight.w500,
  color: kLightContent,
  // height: getProportionateScreenHeight(26),
);
var kButtonStyle = TextStyle(
  fontSize: calculateTextSize(9),
  fontWeight: FontWeight.w600,
  color: kButtonText,
  // height: getProportionateScreenHeight(26),
);
var kHeaderProjectStyle = TextStyle(
  fontSize: calculateTextSize(18),
  fontWeight: FontWeight.w700,
  color: kDarkColor,
  // height: getProportionateScreenHeight(26),
);
var kProjectStyle = TextStyle(
  fontSize: calculateTextSize(12),
  fontWeight: FontWeight.w300,
  color: kDarkContent,
  // decoration: TextDecoration.underline,
  // height: getProportionateScreenHeight(26),
);
var kProjectBoldStyle = TextStyle(
  fontSize: calculateTextSize(12),
  fontWeight: FontWeight.w700,
  color: kDarkColor,
  // decoration: TextDecoration.underline,
  // height: getProportionateScreenHeight(26),
);

var aboutText =
    "The Generator App is an online tool that helps you to export ready-made templates ready to work as your future website. It helps you to combine slides, panels and other components and export it as a set of static files: HTML/CSS/JS.";

var iconColor = [
  const Color(0xFF171515),
  const Color(0xFF1DA1F2),
  const Color(0xFF0077B5),
];
var socialMedia = [
  "https://github.com/SfAtRhl",
  "https://twitter.com/",
  "https://www.linkedin.com/in/soufyane-ait-rehail/",
];

var linkedinImage =
    "https://media.licdn.com/dms/image/D4E03AQGPzJj2s84EnQ/profile-displayphoto-shrink_800_800/0/1673958003081?e=2147483647&v=beta&t=oaMIendwoW1HXGU87yl875L6LV2W7iV5ehtflZteG5A";
