import 'package:flutter/material.dart';

class SizeConfig {
  double screenHeight(BuildContext context, {double? x}) {
    x ??= 100;
    MediaQueryData screenSize = MediaQuery.of(context);
    return screenSize.size.height * x / 100;
  }

  double screenWidth(BuildContext context, {double? x}) {
    x ??= 100;
    MediaQueryData screenSize = MediaQuery.of(context);
    return screenSize.size.width * x / 100;
  }
}
