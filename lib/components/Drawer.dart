import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/about/about_screen.dart';
import '../screens/contact/contact_screen.dart';
import '../screens/layout/layout_template.dart';
import '../screens/main/main_screen.dart';
import '../screens/project/project_screen.dart';
import '../screens/teck/teck_screen.dart';
import '../size_config.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
        color: Colors.white,
        width: SizeConfig.screenWidth * 0.8,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Center(
                  child: NavigatorWidget(
                    title: 'Home',
                    path: MainScreen.routeName,
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: NavigatorWidget(
                    title: 'About',
                    path: AboutScreen.routeName,
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: NavigatorWidget(
                    title: 'Tech Stack',
                    path: TechScreen.routeName,
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: NavigatorWidget(
                    title: 'Projects',
                    path: ProjectScreen.routeName,
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: NavigatorWidget(
                    title: 'Contact',
                    path: ContactScreen.routeName,
                  ),
                ),
              ),
              ListTile(
                  title: Center(
                    child: Padding(
                     padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  )),
            ],
          ),
        ));
  }
}
