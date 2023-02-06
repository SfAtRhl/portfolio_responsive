import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/about/about_screen.dart';
import 'package:portfolio/screens/contact/contact_screen.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'package:portfolio/screens/project/project_screen.dart';
import 'package:portfolio/screens/teck/teck_screen.dart';
import 'package:portfolio/size_config.dart';

import '../../components/center_view.dart';
import '../../locator.dart';
import '../../responsive.dart';
import '../../services/navigation_service.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: Responsive.isMobile(context)
          ? Container(
              color: Colors.red,
              width: 300,
            )
          : null,
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            SizedBox(
              // color: Colors.black,
              height: getProportionateScreenHeight(90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Container(
                  //   height: getProportionateScreenHeight(100),
                  //   width: getProportionateScreenWidth(Responsive.isMobile(context)?170:110),
                  //   child: Center(
                  //     child: ShaderMask(
                  //         blendMode: BlendMode.srcIn,
                  //         shaderCallback: (bounds) =>
                  //             const LinearGradient(colors: [
                  //               //Gradient
                  //               Color(0xFF00C0FD),
                  //               Color(0xFFE70FAA),
                  //             ]).createShader(
                  //               Rect.fromLTWH(
                  //                   0, 0, bounds.width, bounds.height),
                  //             ),
                  //         child: RichText(
                  //           text: const TextSpan(
                  //             style:
                  //                 TextStyle(color: Colors.black, fontSize: 36),
                  //             children: <TextSpan>[
                  //               TextSpan(
                  //                   text: '{007}',
                  //                   style: TextStyle(color: Colors.blue)),
                  //               TextSpan(text: 'AtRhl'),
                  //             ],
                  //           ),
                  //           textScaleFactor: 0.5,
                  //         )),
                  //   ),
                  // ),

                  if (!Responsive.isMobile(context))
                    SizedBox(
                      width: getProportionateScreenWidth(
                          Responsive.isDesktop(context) ? 750 : 1200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Navigator(
                            title: 'Home',
                            path: MainScreen.routeName,
                          ),
                          Navigator(
                            title: 'About',
                            path: AboutScreen.routeName,
                          ),
                          Navigator(
                            title: 'Tech Stack',
                            path: TechScreen.routeName,
                          ),
                          Navigator(
                            title: 'Projects',
                            path: ProjectScreen.routeName,
                          ),
                          Navigator(
                            title: 'Contact',
                            path: ContactScreen.routeName,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (int i = 1; i <= 3; i++)
                                  socialIcom(
                                    num: i.toString(),
                                  ),
                                // Padding(
                                //   padding: EdgeInsets.symmetric(
                                //       horizontal:
                                //           getProportionateScreenWidth(10)),
                                //   child: SvgPicture.asset(
                                //     "assets/icons/2.svg",
                                //   ),
                                // ),
                                // SvgPicture.asset(
                                //   "assets/icons/3.svg",
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (Responsive.isMobile(context))
                    InkWell(
                      child: Container(
                        color: Colors.black,
                        height: 30,
                        width: 30,
                      ),
                      onTap: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                ],
              ),
            ),
            Expanded(
              child: child,
            )
          ],
        ),
      ),
    );
  }
}

class socialIcom extends StatefulWidget {
  const socialIcom({
    Key? key,
    required this.num,
  }) : super(key: key);
  final String num;

  @override
  State<socialIcom> createState() => _socialIcomState();
}

class _socialIcomState extends State<socialIcom> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(5)),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHover: ((value) {
          setState(() {
            isHover = value;
          });
        }),
        onTap: () {},
        child: SvgPicture.asset(
          "assets/icons/${widget.num}.svg",
          color: isHover ? kSolidHeading : null,
        ),
      ),
    );
  }
}

class Navigator extends StatefulWidget {
  const Navigator({
    Key? key,
    required this.title,
    required this.path,
  }) : super(key: key);
  final String title;
  final String path;

  @override
  State<Navigator> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Text(
        widget.title,
        style: isHover ? kNavStylerHover : kNavStyler,
      ),
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      onTap: () {
        locator<NavigationService>().navigateTo(widget.path);
      },
    );
  }
}
