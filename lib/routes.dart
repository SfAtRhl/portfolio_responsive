import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_screen.dart';
import 'package:portfolio/screens/contact/contact_screen.dart';
import 'package:portfolio/screens/project/project_screen.dart';
import 'package:portfolio/screens/teck/teck_screen.dart';

import 'screens/main/main_screen.dart';

// We use name route
// All our routes will be available here
// final Map<String, WidgetBuilder> routes = {
//   MainScreen.routeName: (context) =>  MainScreen(),

//   // FamilleDeProduitScreen
//   // ListClientScreen
//   // DesignationArticleScreen
// };

Route<dynamic> routes(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return _getPageRoute(MainScreen(), settings);
    case "/About":
      return _getPageRoute(AboutScreen(), settings);
    case "/Contact":
      return _getPageRoute(ContactScreen(), settings);
    case "/Tech":
      return _getPageRoute(TechScreen(), settings);
    case "/Project":
      return _getPageRoute(ProjectScreen(), settings);
    // case ContactRoute:
    //   return _getPageRoute(const ContactView(), settings.name as String);
    default:
      return _getPageRoute(MainScreen(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(
    child: child,
    routeName: settings.name ?? "/",
  );
}

class _FadeRoute extends PageRouteBuilder {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
  final Widget child;
  final String routeName;
  _FadeRoute({required this.routeName, required this.child})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
