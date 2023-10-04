// ignore_for_file: deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../responsive.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

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
            height: getProportionateScreenHeight(600),
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
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(scrollbars: false),
                      child: SingleChildScrollView(
                        child: Wrap(
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
                                      width: getProportionateScreenWidth(250),
                                      height: getProportionateScreenWidth(400),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0.5,
                                            blurRadius: 5,
                                            offset: const Offset(0.1,
                                                0.5), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: getProportionateScreenWidth(220),
                                          bottom:
                                              getProportionateScreenHeight(10),
                                          right:
                                              getProportionateScreenWidth(15),
                                          left: getProportionateScreenWidth(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  Projects[i].title,
                                                  style: kHeaderProjectStyle,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical:
                                                          getProportionateScreenWidth(
                                                              15)),
                                                  child: Text(
                                                    Projects[i].description,
                                                    style:
                                                        kProjectStyle.copyWith(
                                                      fontSize:
                                                          calculateTextSize(12),
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
                                                      style: kProjectStyle.copyWith(
                                                          fontSize:
                                                              calculateTextSize(
                                                                  10)),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: 'Tech stack : ',
                                                          style: TextStyle(
                                                            fontSize:
                                                                calculateTextSize(
                                                                    12),
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                          title: 'Live Preview',
                                                          urlPath: Projects[i]
                                                              .livePreview,
                                                        ),
                                                        linkView(
                                                          path: 'github',
                                                          title: 'View Github',
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
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: getProportionateScreenWidth(250),
                                        height:
                                            getProportionateScreenWidth(200),
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
                              : kProjectBoldStyle.copyWith(
                                  color: kStrongDarkColor)
                          : Responsive.isMobile(context)
                              ? kProjectBoldStyle.copyWith(
                                  fontSize: calculateTextSize(10),
                                  color: kDarkContent,
                                )
                              : kProjectBoldStyle.copyWith(color: kDarkContent)
                      // : kProjectStyle,
                      ),
                )
              ],
            ),
          )
        : const SizedBox();
  }
}
