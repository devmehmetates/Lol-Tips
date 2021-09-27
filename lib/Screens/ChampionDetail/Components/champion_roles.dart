import 'package:flutter/material.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class ChampionRoles extends StatelessWidget {
  const ChampionRoles({Key? key, required this.widget}) : super(key: key);
  final ChampionDetailScreen widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.screenWidth(context, x: 2),
      ),
      child: SizedBox(
        width: screenSize.screenWidth(context, x: 98),
        height: screenSize.screenWidth(context, x: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenSize.screenWidth(context, x: 16),
              height: screenSize.screenWidth(context, x: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ROLLER:",
                    style: TextStyle(
                      fontSize: screenSize.screenWidth(context, x: 3),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.champion.tags[0].toString() == "Mage"
                  ? "Büyücü"
                  : widget.champion.tags[0].toString() == "Assassin"
                      ? "Suikastçi"
                      : widget.champion.tags[0].toString() == "Tank"
                          ? "Tank"
                          : widget.champion.tags[0].toString() == "Marksman"
                              ? "Nişancı"
                              : widget.champion.tags[0].toString() == "Support"
                                  ? "Destek"
                                  : "Dövüşçü",
              style: TextStyle(
                color: widget.champion.tags[0].toString() == "Mage"
                    ? Colors.purple[400]
                    : widget.champion.tags[0].toString() == "Assassin"
                        ? Colors.red[400]
                        : widget.champion.tags[0].toString() == "Tank"
                            ? Colors.teal[300]
                            : widget.champion.tags[0].toString() == "Marksman"
                                ? Colors.blue[400]
                                : widget.champion.tags[0].toString() ==
                                        "Support"
                                    ? Colors.pink[400]
                                    : Colors.amber[400],
                fontSize: screenSize.screenWidth(context, x: 3.5),
              ),
            ),
            SizedBox(width: screenSize.screenWidth(context, x: 1)),
            Text(
              widget.champion.tags.length < 2
                  ? ""
                  : widget.champion.tags[1].toString() == "Mage"
                      ? "(Büyücü)"
                      : widget.champion.tags[1].toString() == "Assassin"
                          ? "(Suikastçi)"
                          : widget.champion.tags[1].toString() == "Tank"
                              ? "(Tank)"
                              : widget.champion.tags[1].toString() == "Marksman"
                                  ? "(Nişancı)"
                                  : widget.champion.tags[1].toString() ==
                                          "Support"
                                      ? "(Destek)"
                                      : "(Dövüşçü)",
              style: TextStyle(
                color: widget.champion.tags.length < 2
                    ? Colors.transparent
                    : widget.champion.tags[1].toString() == "Mage"
                        ? Colors.purple[400]
                        : widget.champion.tags[1].toString() == "Assassin"
                            ? Colors.red[400]
                            : widget.champion.tags[1].toString() == "Tank"
                                ? Colors.teal[300]
                                : widget.champion.tags[1].toString() ==
                                        "Marksman"
                                    ? Colors.blue[400]
                                    : widget.champion.tags[1].toString() ==
                                            "Support"
                                        ? Colors.pink[400]
                                        : Colors.amber[400],
                fontSize: screenSize.screenWidth(context, x: 3.5),
              ),
            ),
            SizedBox(width: screenSize.screenWidth(context, x: 2.0)),
            SizedBox(
              width: screenSize.screenWidth(context, x: 5),
              height: screenSize.screenWidth(context, x: 5),
              child: Image.asset(
                widget.champion.tags[0].toString() == "Mage"
                    ? "assets/images/Tags/Mage.png"
                    : widget.champion.tags[0].toString() == "Assassin"
                        ? "assets/images/Tags/Slayer.png"
                        : widget.champion.tags[0].toString() == "Tank"
                            ? "assets/images/Tags/Tank.png"
                            : widget.champion.tags[0].toString() == "Marksman"
                                ? "assets/images/Tags/Marksman.png"
                                : widget.champion.tags[0].toString() ==
                                        "Support"
                                    ? "assets/images/Tags/Sup.png"
                                    : "assets/images/Tags/Fighter.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
