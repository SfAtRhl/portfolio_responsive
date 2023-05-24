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
    fontSize: calculateTextSize(16),
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
    "I am a passionate developer specializing in Flutter and Laravel, two powerful frameworks that enable me to bring ideas to life. With expertise in both frontend and backend development, I thrive in creating seamless and visually appealing user experiences. Through Flutter, I craft stunning cross-platform applications that work flawlessly on iOS and Android. Leveraging Laravel's robust capabilities, I build scalable and efficient backend systems, ensuring optimal performance and security. With a keen eye for detail and a commitment to delivering high-quality code, I strive to develop innovative solutions that meet the unique needs of every project. Let's collaborate and transform ideas into reality!";

var iconColor = [
  const Color(0xFF171515),
  const Color(0xFF1DA1F2),
  const Color(0xFF0077B5),
];
var socialMedia = [
  "https://github.com/SfAtRhl",
  "https://twitter.com/Akwaq007",
  "https://www.linkedin.com/in/soufyane-ait-rehail/",
];

var linkedinImage =
    "https://media.licdn.com/dms/image/D4E03AQGPzJj2s84EnQ/profile-displayphoto-shrink_800_800/0/1673958003081?e=2147483647&v=beta&t=oaMIendwoW1HXGU87yl875L6LV2W7iV5ehtflZteG5A";
var email = "sofyan.ait.rehail@gmail.com";
var FigmaDesign =
    "https://www.figma.com/file/FlWq9r9UlM44Y25gqQBoqh/Developer-Portfolio-Design-(Community)?type=design&node-id=0-1&t=hXx7ddtKO63UQfyI-0";
