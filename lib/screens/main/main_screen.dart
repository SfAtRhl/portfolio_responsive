import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/components/main_Desktop.dart';
import '../../responsive.dart';
import 'components/main_Mobile.dart';

class MainScreen extends StatelessWidget {
  static String routeName = "/";

  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return const Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: MainMobile(),
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
        //   child: const GradientText(
        //     gradient: LinearGradient(colors: [
        //       //Gradient
        //       Colors.white,
        //       Colors.black,
        //     ]),
        //     text: "data",
        //   ),
        // ),
        desktop: MainDesktop(),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText({
    Key? key,
    required this.gradient,
    this.style,
    required this.text,
  }) : super(key: key);
  final Gradient gradient;
  final TextStyle? style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) =>
          // const LinearGradient(colors: [
          //   //Gradient
          //   Colors.white,
          //   Colors.black,
          // ])
          gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
