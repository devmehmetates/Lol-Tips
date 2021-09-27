import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/App/size_config.dart';

class ChampionButton extends StatelessWidget {
  const ChampionButton({
    Key? key,
    required this.screenSize,
    this.onClick,
  }) : super(key: key);

  final SizeConfig screenSize;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.screenWidth(context, x: 31),
      width: screenSize.screenWidth(context, x: 31),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: mainColor),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
        ),
        onPressed: onClick ?? () {},
        child: Container(),
      ),
    );
  }
}
