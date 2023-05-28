import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Project_Desktop.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(150),
          vertical: getProportionateScreenWidth(50)),
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: getProportionateScreenWidth(50)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Projects",
                    style: kHeaderStyler,
                  ),
                  Text(
                    "Things I’ve built so far",
                    style: kUnderHeaderStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.screenWidth * 0.9,
            height: SizeConfig.screenHeight * 0.65,
            child: !Projects.isNotEmpty
                ? Center(
                    child: DefaultTextStyle(
                      style: kNavStyler,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'No Project has been Established, Yet',
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      // runAlignment : WrapAlignment.center,
                      // crossAxisAlignment : WrapCrossAlignment.center,
                      // spacing: getProportionateScreenWidth(100),
                      // runSpacing: getProportionateScreenWidth(100),
                      children: [
                        for (int i = 0; i < Projects.length; i++)
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(20)),
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: SizeConfig.screenWidth / 2,
                                  height: SizeConfig.screenHeight / 3,
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
                                      top: SizeConfig.screenHeight / 5.8,
                                      right: getProportionateScreenWidth(15),
                                      left: getProportionateScreenWidth(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          Projects[i].title,
                                          // "Project Tile goes here",
                                          style: kHeaderProjectStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical:
                                                  getProportionateScreenWidth(
                                                      15)),
                                          child: Text(
                                            Projects[i].description,

                                            // "This is sample project description random things are here in description This is sample project lorem ipsum generator for dummy content",
                                            style: kProjectStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 10,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical:
                                                  getProportionateScreenWidth(
                                                      20)),
                                          child: RichText(
                                            text: TextSpan(
                                              style: kProjectStyle.copyWith(fontSize: calculateTextSize(10)),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Tech stack : ',
                                                  style: TextStyle(
                                                    fontSize:
                                                        calculateTextSize(10),
                                                    fontWeight: FontWeight.w700,
                                                    color: kDarkColor,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      // 'HTML , JavaScript, SASS, React',
                                                      Projects[i].techStack,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: SizedBox(
                                            width: SizeConfig.screenWidth / 2.2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                linkView(
                                                  path: 'link',
                                                  title: 'Live Preview',
                                                  urlPath:
                                                      Projects[i].livePreview,
                                                ),
                                                linkView(
                                                  path: 'github',
                                                  title: 'View Github',
                                                  urlPath: Projects[i].viewGithub,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: SizeConfig.screenWidth / 2,
                                    height: SizeConfig.screenHeight / 6,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          Projects[i].imageAsset,
                                        ),
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
          ),
        ],
      ),
    );
  }
}
