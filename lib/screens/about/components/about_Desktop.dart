import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';

import '../../../model/experience.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

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
                      "About Me",
                      style: kHeaderStyler,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(10)),
                      child: Text(
                        aboutText,
                        style: kUnderHeaderStyle,
                      ),
                    ),
                    Text(
                      "Work Experience",
                      style: kHeaderStyler,
                    ),
                    SizedBox(
                      height: Experiences.length *
                          getProportionateScreenHeight(100),
                      child: ListView.separated(
                        itemCount: Experiences.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemBuilder: (BuildContext context, int index) {
                          // return Container();
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(10)),
                            child: Experience(
                              function: Experiences[index].function,
                              location: Experiences[index].location,
                              periode: Experiences[index].periode,
                              startup: Experiences[index].startup,
                              type: Experiences[index].type,
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      "Education",
                      style: kHeaderStyler,
                    ),
                    SizedBox(
                      height:
                          Education.length * getProportionateScreenHeight(100),
                      child: ListView.separated(
                        itemCount: Education.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemBuilder: (BuildContext context, int index) {
                          // return Container();
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(10)),
                            child: Experience(
                              function: Education[index].function,
                              location: Education[index].location,
                              periode: Education[index].periode,
                              startup: Education[index].startup,
                              type: Education[index].type,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
    required this.function,
    required this.startup,
    this.location = "",
    required this.periode,
    required this.type,
  }) : super(key: key);
  final String function;
  final String type;

  final String startup;

  final String? location;
  final String periode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              // "Junior Web Developer",
              function,
              style: kUnderHeaderStyle,
            ),
            Container(
                width: getProportionateScreenWidth(84),
                height: getProportionateScreenHeight(24),
                decoration: BoxDecoration(
                    color: kButtonSuccess,
                    borderRadius: BorderRadius.circular(25.0)),
                child: Center(
                    child: Text(
                  // 'Full Time',
                  type,
                  style: kButtonStyle,
                ))),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/icons/building.svg"),
                Text(
                  // "Dr. Rajkumar’s Learning App",
                  startup,
                  style: kUnderStyle,
                ),
                if (location!.isNotEmpty)
                  SvgPicture.asset("assets/icons/location.svg"),
                Text(
                  // "JBengaluru",
                  location ?? "",
                  style: kUnderStyle,
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/date.svg"),
                Text(
                  // "Sep 2021 - Dec 2021",
                  periode,
                  style: kUnderStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
