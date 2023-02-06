import 'package:flutter/material.dart';
import 'package:portfolio/screens/teck/components/tech_Desktop.dart';
import '../../responsive.dart';

class TechScreen extends StatelessWidget {
  static String routeName = "/Tech";
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
          tablet: Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blue.shade900,
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  color: Colors.red.shade900,
                ),
              ),
            ],
          ),
          desktop: TechDesktop(),),
    );
  }
}
