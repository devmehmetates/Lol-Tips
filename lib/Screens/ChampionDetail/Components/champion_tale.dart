import 'package:flutter/material.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class ChampionTale extends StatelessWidget {
  const ChampionTale({
    Key? key,
    required this.opened,
    required this.widget,
  }) : super(key: key);

  final bool opened;
  final ChampionDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.screenWidth(context, x: 2),
      ),
      child: Text(
        opened ? widget.champion.lore : widget.champion.blurb,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: screenSize.screenWidth(context, x: 3.5),
          height: 1.25,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
