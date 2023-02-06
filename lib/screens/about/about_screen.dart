import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/components/about_Desktop.dart';
import '../../responsive.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = "/About";
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: Container(
          color: Colors.blue.shade800,
        ),
        desktop: const AboutDesktop(),
      ),
    );
  }
}
