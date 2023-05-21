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
          horizontal: getProportionateScreenWidth(150),
          vertical: getProportionateScreenHeight(100)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: kHeaderStyler,
              children: <TextSpan>[
                TextSpan(
                  text: 'Hi 👋,\n',
                  style: kHeaderStyler,
                ),
                const TextSpan(text: 'My name is\n'),
                const TextSpan(text: 'Soufyane\n'),
                const TextSpan(text: 'I build things for\n'),
                const TextSpan(text: 'web && mobile app'),
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
    );
  }
}
