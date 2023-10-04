import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/components/about_Desktop.dart';
import '../../responsive.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = "/About";

  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    return const Scaffold(
      body: Responsive(
        desktop: AboutDesktop(),
      ),
    );
  }
}
