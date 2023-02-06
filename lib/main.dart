import 'package:flutter/material.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/screens/about/about_screen.dart';
import 'package:portfolio/screens/layout/layout_template.dart';
import 'package:portfolio/screens/main/main_screen.dart';

import 'services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      builder: (context, child) => LayoutTemplate(
        child: child ??
            Container(
              color: Colors.red,
            ),
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: routes,
      initialRoute: MainScreen.routeName,
    );
  }
}
