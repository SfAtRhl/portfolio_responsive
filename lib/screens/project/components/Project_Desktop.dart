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
                    Text(
                      "Things I’ve built so far",
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
                spacing: getProportionateScreenWidth(50),
                runSpacing: getProportionateScreenHeight(50),
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
                              right: getProportionateScreenWidth(15),
                              left: getProportionateScreenWidth(15),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Project Tile goes here",
                                  style: kHeaderProjectStyle,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          getProportionateScreenHeight(15)),
                                  child: Text(
                                    "This is sample project description random things are here in description This is sample project lorem ipsum generator for dummy content",
                                    style: kProjectStyle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          getProportionateScreenHeight(15)),
                                  child: RichText(
                                    text: TextSpan(
                                      style: kProjectStyle,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Tech stack : ',
                                          style: TextStyle(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                            fontWeight: FontWeight.w700,
                                            color: kDarkColor,
                                          ),
                                        ),
                                        const TextSpan(
                                            text:
                                                'HTML , JavaScript, SASS, React'),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    linkView(
                                      path: 'link',
                                      title: 'Live Preview',
                                    ),
                                    linkView(
                                      path: 'github',
                                      title: 'View Github',
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
                                image: AssetImage('assets/images/$i.png'),
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

class linkView extends StatefulWidget {
  const linkView({
    Key? key,
    required this.path,
    required this.title,
  }) : super(key: key);

  final String path;
  final String title;

  @override
  State<linkView> createState() => _linkViewState();
}

class _linkViewState extends State<linkView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
          ),
          SizedBox(
            width: getProportionateScreenWidth(5),
          ),
          Container(
            padding: const EdgeInsets.only(
              bottom: 2, // Space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: isHover ? kDarkColor : kDarkContent,
              width: 1.0, // Underline thickness
            ))),
            child: Text(
              // " Live Preview",
              widget.title,
              style: isHover ? kProjectBoldStyle : kProjectStyle,
            ),
          )
        ],
      ),
    );
  }
}
