import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';
import '../../responsive.dart';
import '../../size_config.dart';

class ContactScreen extends StatefulWidget {
  static String routeName = "/Contact";

  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    // It provide us the width and height
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        // mobile: Container(
        //   color: Colors.blue.shade800,
        // ),
        // tablet: Row(
        //   children: [
        //     Expanded(
        //       flex: 6,
        //       child: Container(
        //         color: Colors.blue.shade900,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 9,
        //       child: Container(
        //         color: Colors.red.shade900,
        //       ),
        //     ),
        //   ],
        // ),
        desktop: Container(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Once our width is less then 1300 then it start showing errors
                    // Now there is no error if our width is less then 1340
                    // Expanded(
                    //   flex: size.width > 1340 ? 2 : 4,
                    //   child: Container(
                    //     color: Colors.red.shade900,
                    //   ),
                    // ),
                    // Expanded(
                    //   flex: size.width > 1340 ? 3 : 5,
                    //   child: Container(
                    //     color: Colors.white,
                    //   ),
                    // ),
                    Text("For any questions please mail us:",
                        style: Responsive.isTablet(context)
                            ? kHeaderStyler.copyWith(
                                fontSize: calculateTextSize(30),
                              )
                            : Responsive.isMobile(context)
                                ? kHeaderStyler.copyWith(
                                    fontSize: calculateTextSize(20),
                                  )
                                : kHeaderStyler),
                    InkWell(
                      child: GradientText(email,
                          colors: const [
                            Color(0xFF13B0F5),
                            Color(0xFFE70FAA),
                          ],
                          style: Responsive.isTablet(context)
                              ? kHeaderStyler.copyWith(
                                  fontSize: calculateTextSize(25),
                                )
                              : Responsive.isMobile(context)
                                  ? kHeaderStyler.copyWith(
                                      fontSize: calculateTextSize(18),
                                    )
                                  : kHeaderStyler.copyWith(
                                      fontSize: calculateTextSize(30),
                                    )
                          // style: TextStyle(
                          //     fontSize: 30.0,
                          //     fontWeight: FontWeight.bold,
                          //     foreground: Paint()
                          //       ..shader = const LinearGradient(
                          //         colors: <Color>[
                          //           Color(0xFF13B0F5),
                          //           Color(0xFFE70FAA)
                          //         ],
                          //       ).createShader(Rect.fromLTWH(0.0, 0.0, 10.0, 100.0)))
                          // kHeaderStyler,
                          ),
                      onTap: () async {
                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: email,
                          // query: encodeQueryParameters(<String, String>{
                          //   'subject': 'Example Subject & Symbols are allowed!',
                          // }),
                        );
                        if (await canLaunchUrl(emailLaunchUri)) {
                          await launchUrl(
                            emailLaunchUri,
                          );
                        } else {
                          throw 'Could not launch $emailLaunchUri';
                        }
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "Shout out to ",
                          style: Responsive.isTablet(context)
                              ? kNavStyler.copyWith(
                                  fontSize: calculateTextSize(15),
                                )
                              : Responsive.isMobile(context)
                                  ? kNavStyler.copyWith(
                                      fontSize: calculateTextSize(15),
                                    )
                                  : kNavStyler,
                        ),
                        InkWell(
                          child: Text(
                            "Pavan MG",
                            style: isHover
                                ? Responsive.isTablet(context)
                                    ? kNavStylerHover.copyWith(
                                        fontSize: calculateTextSize(15),
                                      )
                                    : Responsive.isMobile(context)
                                        ? kNavStylerHover.copyWith(
                                            fontSize: calculateTextSize(15),
                                          )
                                        : kNavStylerHover
                                : Responsive.isTablet(context)
                                    ? kNavStyler.copyWith(
                                        fontSize: calculateTextSize(15),
                                      )
                                    : Responsive.isMobile(context)
                                        ? kNavStyler.copyWith(
                                            fontSize: calculateTextSize(15),
                                          )
                                        : kNavStyler,
                          ),
                          onHover: (val) {
                            setState(() {
                              isHover = val;
                            });
                          },
                          onTap: () async {
                            if (await canLaunch(FigmaDesign)) {
                              await launch(
                                FigmaDesign,
                              );
                            } else {
                              throw 'Could not launch $FigmaDesign';
                            }
                          },
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
