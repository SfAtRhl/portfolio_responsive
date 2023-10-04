import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/size_config.dart';

import 'Project_Desktop.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var size = double.infinity - getProportionateScreenWidth(20);
    // var size = SizeConfig().init(context);
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
                      children: [
                        for (int i = 0; i < Projects.length; i++)
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(15),
                                horizontal: 2),
                            child: Container(
                              alignment: Alignment.center,
                              width: size,
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
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: SizeConfig.screenHeight / 6,
                                    width: size,
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
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
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
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
                                                  style: kProjectStyle
                                                      .copyWith(
                                                    fontSize:
                                                        calculateTextSize(
                                                            12),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical:
                                                        getProportionateScreenWidth(
                                                            10)),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: kProjectStyle
                                                        .copyWith(
                                                            fontSize:
                                                                calculateTextSize(
                                                                    10)),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text:
                                                            'Tech stack : ',
                                                        style: TextStyle(
                                                          fontSize:
                                                              calculateTextSize(
                                                                  12),
                                                          fontWeight:
                                                              FontWeight
                                                                  .w700,
                                                          color: kDarkColor,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            // 'HTML , JavaScript, SASS, React',
                                                            Projects[i]
                                                                .techStack,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(
                                                        top: 5),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      linkView(
                                                        path: 'link',
                                                        title:
                                                            'Live Preview',
                                                        urlPath: Projects[i]
                                                            .livePreview,
                                                      ),
                                                      linkView(
                                                        path: 'github',
                                                        title:
                                                            'View Github',
                                                        urlPath: Projects[i]
                                                            .viewGithub,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
