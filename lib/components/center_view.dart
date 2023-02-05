import 'package:flutter/material.dart';

import '../size_config.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(15)),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
