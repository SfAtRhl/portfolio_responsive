import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../responsive.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(150),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Responsive.isTablet(context)
                      ? kHeaderStyler.copyWith(
                          fontSize: calculateTextSize(30),
                        )
                      : kHeaderStyler,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Hi 👋,\n',
                    ),
                    TextSpan(text: 'My name is'),
                    // TextSpan(text: 'Soufyane\n'),

                    // TextSpan(text: 'I build things for'),
                  ],
                ),
              ),
              GradientText(
                "Soufyane",
                colors: const [
                  Color(0xFF13B0F5),
                  Color(0xFF7764D2),
                ],
                style: Responsive.isTablet(context)
                    ? kHeaderStyler.copyWith(
                        fontSize: calculateTextSize(30),
                      )
                    : kHeaderStyler,
              ),
              // gardientsxt(text: 'Soufyane\n'),

              Text(
                "I build things for",
                style: Responsive.isTablet(context)
                    ? kHeaderStyler.copyWith(
                        fontSize: calculateTextSize(30),
                      )
                    : kHeaderStyler,
              ),
              DefaultTextStyle(
                style: Responsive.isTablet(context)
                    ? kHeaderStyler.copyWith(
                        fontSize: calculateTextSize(30),
                      )
                    : kHeaderStyler,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Mobile app',
                      speed: const Duration(milliseconds: 300),
                    ),
                    TypewriterAnimatedText(
                      'Web app',
                      speed: const Duration(milliseconds: 300),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: Responsive.isTablet(context)
                ? SizeConfig.screenWidth * 0.3
                : SizeConfig.screenWidth * 0.21,
            width: Responsive.isTablet(context)
                ? SizeConfig.screenWidth * 0.3
                : SizeConfig.screenWidth * 0.21,
            // SizeConfig.screenWidth * 0.21,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFE70FAA),
                      Color(0xFF00C0FD),
                    ])),
            child: Container(
              height: Responsive.isTablet(context)
                  ? SizeConfig.screenWidth * 0.28
                  : SizeConfig.screenWidth * 0.2,
              width: Responsive.isTablet(context)
                  ? SizeConfig.screenWidth * 0.28
                  : SizeConfig.screenWidth * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(linkedinImage),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
