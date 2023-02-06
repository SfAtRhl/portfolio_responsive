import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/size_config.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

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
                      "Projects",
                      style: kHeaderStyler,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionateScreenHeight(10)),
                      child: Text(
                        "Things I’ve built so far",
                        style: kUnderHeaderStyle,
                      ),
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
                  for (int i = 1; i <= 6; i++)
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: getProportionateScreenWidth(250),
                          height: getProportionateScreenHeight(456),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 0.3,
                                blurRadius: 15,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(180),
                              right: getProportionateScreenWidth(28),
                              left: getProportionateScreenWidth(28),
                            ),
                            child: Column(
                              children: [
                                 Text("Project Tile goes here",style: kHeaderProjectStyle,),
                                 Text(
                                    "This is sample project description random things are here in description This is sample project lorem ipsum generator for dummy content",style: kProjectStyle,),
                                const Text(
                                    "Tech stack : HTML , JavaScript, SASS, React"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset("icons/link.svg"),
                                         Text("Live Preview",style: kProjectStyle,)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset("icons/github.svg"),
                                         Text("View Code",style: kProjectStyle,)
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            alignment: Alignment.center,
                            width: getProportionateScreenWidth(250),
                            height: getProportionateScreenHeight(200),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/$i.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  topLeft: Radius.circular(25.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  // SvgPicture.asset("assets/icons/technologies/$i.svg"),
                  // Padding(
                  //         padding: EdgeInsets.symmetric(
                  //             vertical: getProportionateScreenHeight(10)),
                  //         child: Experience(
                  //           function: Experiences[i].function,
                  //           location: Experiences[i].location,
                  //           periode: Experiences[i].periode,
                  //           startup: Experiences[i].startup,
                  //           type: Experiences[i].type,
                  //         ),
                  //       ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
