import 'package:flutter/material.dart';
import 'package:portfolio/screens/teck/components/tech_Desktop.dart';
import '../../responsive.dart';

class TechScreen extends StatelessWidget {
  static String routeName = "/Tech";

  const TechScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    return const Scaffold(
      body: Responsive(
        desktop: TechDesktop(),
      ),
    );
  }
}
