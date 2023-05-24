// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/about/about_screen.dart';
import 'package:portfolio/screens/contact/contact_screen.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'package:portfolio/screens/project/project_screen.dart';
import 'package:portfolio/screens/teck/teck_screen.dart';
import 'package:portfolio/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/Drawer.dart';
import '../../components/center_view.dart';
import '../../locator.dart';
import '../../responsive.dart';
import '../../services/navigation_service.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);
  final Widget child;
    static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: Responsive.isMobile(context) ? const DrawerWidget() : null,
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
                  const Flexible(
                    flex: 2,
                    child: SizedBox(),
                  ),
                  if (!Responsive.isMobile(context))
                    Flexible(
                      flex: Responsive.isDesktop(context) ? 3 : 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          NavigatorWidget(
                            title: 'Home',
                            path: MainScreen.routeName,
                          ),
                          NavigatorWidget(
                            title: 'About',
                            path: AboutScreen.routeName,
                          ),
                          NavigatorWidget(
                            title: 'Tech Stack',
                            path: TechScreen.routeName,
                          ),
                          NavigatorWidget(
                            title: 'Projects',
                            path: ProjectScreen.routeName,
                          ),
                          NavigatorWidget(
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
                                    color: iconColor[i - 1],
                                    url: socialMedia[i - 1],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (Responsive.isMobile(context))
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: const Icon(
                          Icons.menu_rounded,
                          color: kSolidHeading,
                          size: 35,
                        ),
                        onTap: () {
                          scaffoldKey.currentState!.openDrawer();
                        },
                      ),
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
    required this.color,
    required this.url,
  }) : super(key: key);
  final String num;
  final Color color;
  final String url;

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
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHover: ((value) {
          setState(() {
            isHover = value;
          });
        }),
        onTap: () async {
          if (await canLaunch(widget.url)) {
            await launch(
              widget.url,
            );
          } else {
            throw 'Could not launch ${widget.url}';
          }
        },
        child: SvgPicture.asset(
          "assets/icons/${widget.num}.svg",
          color: isHover ? widget.color : null,
        ),
      ),
    );
  }
}

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({
    Key? key,
    required this.title,
    required this.path,
  }) : super(key: key);
  final String title;
  final String path;

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Text(
        widget.title,
        style: isHover
            ? Responsive.isTablet(context)
                ? kNavStylerHover.copyWith(
                    fontSize: calculateTextSize(15),
                  )
                : kNavStylerHover
            : Responsive.isTablet(context)
                ? kNavStyler.copyWith(
                    fontSize: calculateTextSize(15),
                  )
                : kNavStyler,
      ),
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      onTap: () {
        locator<NavigationService>().navigateTo(widget.path);
       LayoutTemplate. scaffoldKey.currentState!.closeDrawer();
      // Navigator.pop(context);

      },
    );
  }
}
