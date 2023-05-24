import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(60),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(40),
                  horizontal: getProportionateScreenWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: kHeaderStyler.copyWith(fontSize: calculateTextSize(25),),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Hi 👋,\n',
                        ),
                        TextSpan(text: 'My name is\n'),
                        TextSpan(text: 'Soufyane\n'),
                        TextSpan(text: 'I build things for'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: kHeaderStyler.copyWith(fontSize: calculateTextSize(25),),
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
            ),
            Container(
              height: getProportionateScreenHeight(349),
              width: getProportionateScreenHeight(349),
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
                width: getProportionateScreenHeight(330),
                height: getProportionateScreenHeight(330),
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
      ),
    );
  }
}
