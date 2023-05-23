import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(150),
            vertical: getProportionateScreenHeight(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: kHeaderStyler,
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Hi 👋,\n',
                        // style: TextStyle(
                        //   fontSize: getProportionateScreenWidth(52),
                        //   fontWeight: FontWeight.w700,
                        //   color: kDarkColor,
                        // ),
                      ),
                      TextSpan(text: 'My name is\n'),
                      TextSpan(text: 'Soufyane\n'),
                      TextSpan(text: 'I build things for'),

                      // TextSpan(text: 'web && mobile app'),
                    ],
                  ),
                ),
                //  Text(
                //   'Hi 👋,\nMy name is\nSoufyane\nI build things for',
                //   style: kHeaderStyler,
                // ),
                DefaultTextStyle(
                  style: kHeaderStyler,
                  child: AnimatedTextKit(
                    animatedTexts: [
                       TypewriterAnimatedText('Mobile app', speed: const Duration(milliseconds: 300),),
                       TypewriterAnimatedText('Web app', speed: const Duration(milliseconds: 300),),
                    ],
                    
                  ),
                ),
              ],
            ),
            Container(
              height: SizeConfig.screenWidth * 0.21,
              // getProportionateScreenHeight(349),
              width: SizeConfig.screenWidth * 0.21,
              // getProportionateScreenWidth(349),
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
                width: SizeConfig.screenWidth * 0.20,
                height: SizeConfig.screenWidth * 0.20,
                // getProportionateScreenHeight(330),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(linkedinImage),

                    // ExactAssetImage('assets/images/2.png'),

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
