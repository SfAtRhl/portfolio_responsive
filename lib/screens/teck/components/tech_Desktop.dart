import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';

import '../../../responsive.dart';

class TechDesktop extends StatelessWidget {
  const TechDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(150),
          vertical: getProportionateScreenHeight(50)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(50)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Tech Stack",
                    style: Responsive.isTablet(context)
                ? kHeaderStyler.copyWith(
                    fontSize: calculateTextSize(30),
                  )
                : kHeaderStyler
                    // kHeaderStyler,
                  ),
                  Text(
                    " Technologies I’ve been working with recently",
                    style: kUnderHeaderStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            // width: SizeConfig.screenWidth * 0.9,
            height: SizeConfig.screenHeight * 0.50,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 50.0,
                runSpacing: 50.0,
                children: [
                  // for (int i = 1; i <= 12; i++)

                  for (int i = 1; i <= 12; i++)
                    SvgPicture.asset(
                      "assets/icons/technologies/$i.svg",
                      height: getProportionateScreenWidth(
                          Responsive.isMobile(context) ? 200 : 100),
                      width: getProportionateScreenWidth(100),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
