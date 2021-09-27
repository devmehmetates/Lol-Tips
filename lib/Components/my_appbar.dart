import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/App/size_config.dart';

SizeConfig screenSize = SizeConfig();

AppBar myAppbar(String title, BuildContext context) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w300,
        fontSize: screenSize.screenWidth(context, x: 5),
      ),
    ),
    bottom: PreferredSize(
      child: Container(
        color: mainColor,
        height: 1.0,
      ),
      preferredSize: const Size.fromHeight(2.0),
    ),
  );
}
