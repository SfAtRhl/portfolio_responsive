import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';

class TechDesktop extends StatelessWidget {
  const TechDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
                      style: kHeaderStyler,
                    ),
                    Text(
                      " Technologies I’ve been working with recently",
                      style: kUnderHeaderStyle,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Wrap(
                // runAlignment : WrapAlignment.center,
                // crossAxisAlignment : WrapCrossAlignment.center,
                spacing: 50.0,
                runSpacing: 50.0,
                children: [
                  for (int i = 1; i <= 12; i++)
                    SvgPicture.asset("assets/icons/technologies/$i.svg"
                    ,height: getProportionateScreenWidth(100),
                    width: getProportionateScreenWidth(100),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
