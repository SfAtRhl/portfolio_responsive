import 'package:flutter/material.dart';
import 'package:portfolio/screens/project/components/Project_Desktop.dart';
import '../../responsive.dart';
import 'components/Project_Mobile.dart';
import 'components/Project_Tablet.dart';

class ProjectScreen extends StatelessWidget {
  static String routeName = "/Project";

  const ProjectScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    // Size size = MediaQuery.of(context).size;
    return const Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: ProjectMobile(),
        // Container(
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [
        //         Color(0xFF3366FF),
        //         Color(0xFF00CCFF),
        //       ],
        //       begin: FractionalOffset(0.0, 0.0),
        //       end: FractionalOffset(0.0, 0.5),
        //       stops: [0.0, 1.0],
        //       tileMode: TileMode.clamp,
        //     ),
        //   ),
        //   child: ShaderMask(
        //     blendMode: BlendMode.srcIn,
        //     shaderCallback: (bounds) => const LinearGradient(colors: [
        //       //Gradient
        //       Colors.white,
        //       Colors.black,
        //     ]).createShader(
        //       Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        //     ),
        //     child: const Text(
        //       "text",
        //       style: TextStyle(fontSize: 150),
        //     ),
        //   ),
        // ),
        tablet: ProjectTablet(),
        desktop: ProjectDesktop(),
      ),
    );
  }
}
