import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class ChampionTitle extends StatelessWidget {
  const ChampionTitle({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ChampionDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: screenSize.screenWidth(context, x: 95),
          child: Text(
            widget.champion.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.w200,
              fontSize: screenSize.screenWidth(context, x: 9),
            ),
          ),
        ),
      ],
    );
  }
}
