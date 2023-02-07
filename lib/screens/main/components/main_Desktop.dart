import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(150),
          vertical: getProportionateScreenHeight(100)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                TextSpan(text: 'Pavan MG\n'),
                TextSpan(text: 'I build things for web'),
              ],
            ),
          ),
          Container(
            height: getProportionateScreenHeight(349),
            width: getProportionateScreenWidth(349),
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
              width: getProportionateScreenWidth(330),
              height: getProportionateScreenHeight(330),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/2.png'),
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
