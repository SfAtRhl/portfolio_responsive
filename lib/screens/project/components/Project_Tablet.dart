import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../responsive.dart';

class ProjectTablet extends StatelessWidget {
  const ProjectTablet({super.key});

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
                EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Projects",
                      style: Responsive.isTablet(context)
                          ? kHeaderStyler.copyWith(
                              fontSize: calculateTextSize(30),
                            )
                          : kHeaderStyler),
                  Text(
                    "Things I’ve built so far",
                    style: kUnderHeaderStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            // color: Colors.red,
            height: getProportionateScreenHeight(550),
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
                : Padding(
                    padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                    child: SingleChildScrollView(
                      child: Wrap(
                        // runAlignment : WrapAlignment.center,
                        // crossAxisAlignment : WrapCrossAlignment.center,
                        spacing: getProportionateScreenWidth(50),
                        runSpacing: getProportionateScreenWidth(30),
                        children: [
                          for (int i = 0; i < Projects.length; i++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: getProportionateScreenWidth(400),
                                    height: getProportionateScreenWidth(550),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.8),
                                          spreadRadius: 0.5,
                                          blurRadius: 5,
                                          offset: const Offset(0.1,
                                              0.5), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getProportionateScreenWidth(310),
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
                                      // left: 10,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: getProportionateScreenWidth(
                                                400),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical:
                                                      getProportionateScreenWidth(
                                                          20),
                                                  horizontal:
                                                      getProportionateScreenWidth(
                                                          15)),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: kProjectStyle,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Tech stack : ',
                                                      style: kTechStack,
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
                                          ),
                                          Container(
                                            // color: Colors.black12,
                                            width: getProportionateScreenWidth(
                                                360),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                  urlPath:
                                                      Projects[i].viewGithub,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: getProportionateScreenWidth(400),
                                      height: getProportionateScreenWidth(300),
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
                        ],
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class linkView extends StatefulWidget {
  const linkView({
    Key? key,
    required this.path,
    required this.title,
    this.urlPath,
  }) : super(key: key);

  final String path;
  final String title;
  final String? urlPath;

  @override
  State<linkView> createState() => _linkViewState();
}

class _linkViewState extends State<linkView> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return widget.urlPath != ""
        ? InkWell(
            onTap: () async {
              const url = "https://pub.dev/packages/url_launcher/example";
              if (await canLaunch("${widget.urlPath}")) {
                await launch(
                  "${widget.urlPath}",
                );
              } else {
                throw 'Could not launch ${widget.urlPath}';
              }
            },
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onHover: ((value) {
              setState(() {
                isHover = value;
              });
            }),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/${widget.path}.svg",
                  color: isHover ? null : kDarkContent,
                  height: Responsive.isMobile(context)
                      ? getProportionateScreenHeight(25)
                      : getProportionateScreenHeight(25),
                  // width: getProportionateScreenWidth(20),
                ),
                SizedBox(
                  width: Responsive.isMobile(context)
                      ? getProportionateScreenWidth(5)
                      : getProportionateScreenHeight(4),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 2, // Space between underline and text
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: isHover ? kStrongDarkColor : kDarkContent,
                    width: 2.0, // Underline thickness
                  ))),
                  child: Text(
                      // " Live Preview",
                      widget.title,
                      style: isHover
                          ? Responsive.isMobile(context)
                              ? kProjectBoldStyle.copyWith(
                                  fontSize: calculateTextSize(10),
                                  color: kStrongDarkColor,
                                )
                              : Responsive.isTablet(context)
                                  ? kProjectBoldStyle.copyWith(
                                      fontSize: getProportionateScreenWidth(20),
                                      color: kStrongDarkColor,
                                    )
                                  : kProjectBoldStyle.copyWith(
                                      color: kStrongDarkColor)
                          : Responsive.isMobile(context)
                              ? kProjectBoldStyle.copyWith(
                                  fontSize: calculateTextSize(10),
                                  color: kDarkContent,
                                )
                              : Responsive.isTablet(context)
                                  ? kProjectBoldStyle.copyWith(
                                      fontSize: getProportionateScreenWidth(20),
                                      color: kDarkContent,
                                    )
                                  :kProjectBoldStyle.copyWith(color: kDarkContent)
                      // : kProjectStyle,
                      ),
                )
              ],
            ),
          )
        : const SizedBox();
  }
}
