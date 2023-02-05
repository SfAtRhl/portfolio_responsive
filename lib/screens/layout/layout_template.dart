import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_screen.dart';
import 'package:portfolio/screens/contact/contact_screen.dart';
import 'package:portfolio/screens/main/main_screen.dart';

import '../../components/center_view.dart';
import '../../locator.dart';
import '../../responsive.dart';
import '../../services/navigation_service.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Responsive.isMobile == true
          ? Container(
              color: Colors.red,
              width: 300,
              height: 300,
            )
          //  NavigationDrawer()
          : null,
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                    onTap: () {
                      locator<NavigationService>()
                          .navigateTo(AboutScreen.routeName);
                    },
                  ),
                    InkWell(
                    child: Container(
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                    onTap: () {
                      locator<NavigationService>()
                          .navigateTo(ContactScreen.routeName);
                    },
                  ),
                    InkWell(
                    child: Container(
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                    onTap: () {
                      locator<NavigationService>()
                          .navigateTo(MainScreen.routeName);
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
