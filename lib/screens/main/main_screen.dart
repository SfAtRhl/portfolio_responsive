import 'package:flutter/material.dart';
import '../../responsive.dart';

class MainScreen extends StatelessWidget {
  static String routeName = "/";
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: Container(
          color: Colors.red,
        ),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: size.width > 1340 ? 3 : 5,
              child: Container(
                color: Colors.grey,
              ),
            ),
            Expanded(
              flex: size.width > 1340 ? 8 : 10,
              child: Container(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
