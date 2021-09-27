import 'package:flutter/material.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class ChampionStats extends StatelessWidget {
  const ChampionStats(
      {Key? key,
      required this.widget,
      required this.firstView,
      required this.secontView,
      required this.thirtView})
      : super(key: key);
  final ChampionDetailScreen widget;
  final List firstView;
  final List secontView;
  final List thirtView;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.screenWidth(context, x: 2),
        vertical: screenSize.screenWidth(context, x: 2.5),
      ),
      child: SizedBox(
        height: screenSize.screenWidth(context, x: 15),
        width: screenSize.screenWidth(context, x: 98),
        child: Row(
          children: [
            statsView(context, firstView[0], firstView[1], firstView[2],
                firstView[3]),
            statsView(context, secontView[0], secontView[1], secontView[2],
                secontView[3]),
            statsView(context, thirtView[0], thirtView[1], thirtView[2],
                thirtView[3]),
          ],
        ),
      ),
    );
  }

  Padding statsView(BuildContext context, String title, String type,
      String perType, Color? color) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.screenWidth(context, x: 1),
      ),
      child: Container(
        height: screenSize.screenWidth(context, x: 15),
        width: screenSize.screenWidth(context, x: 30),
        decoration: BoxDecoration(
          border: Border.all(color: color!),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: screenSize.screenWidth(context, x: 3),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.champion.stats[type].toString(),
                  style: TextStyle(
                    fontSize: screenSize.screenWidth(context, x: 3),
                  ),
                ),
                perType == "movespeed"
                    ? const SizedBox()
                    : perType == "crit"
                        ? const SizedBox()
                        : Text(
                            " +(${widget.champion.stats[perType].toString()})",
                            style: TextStyle(
                              color: color,
                              fontSize: screenSize.screenWidth(context, x: 3),
                            ),
                          ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
