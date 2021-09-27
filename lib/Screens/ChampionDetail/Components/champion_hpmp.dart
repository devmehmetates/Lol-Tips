import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class ChampionHPMP extends StatelessWidget {
  const ChampionHPMP({Key? key, required this.widget}) : super(key: key);
  final ChampionDetailScreen widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.screenWidth(context, x: 2),
        vertical: screenSize.screenWidth(context, x: 2.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: screenSize.screenWidth(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "MEVCUT YAMA:",
                  style: TextStyle(
                    fontSize: screenSize.screenWidth(context, x: 3),
                  ),
                ),
                SizedBox(
                  width: screenSize.screenWidth(context, x: 1),
                ),
                Text(
                  widget.champion.version,
                  style: TextStyle(
                    fontSize: screenSize.screenWidth(context, x: 3),
                    color: mainColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.screenWidth(context, x: 15),
            width: screenSize.screenWidth(context, x: 98),
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.screenWidth(context, x: 15),
                  child: Text(
                    "CAN:",
                    style: TextStyle(
                      fontSize: screenSize.screenWidth(context, x: 3),
                    ),
                  ),
                ),
                Container(
                  width: screenSize.screenWidth(context, x: 80.0),
                  height: screenSize.screenWidth(context, x: 7.0),
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.champion.stats["hp"].toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.screenWidth(context, x: 3.5),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "(${widget.champion.stats["hpperlevel"].toString()})",
                        style: TextStyle(
                          color: Colors.teal[800],
                          fontSize: screenSize.screenWidth(context, x: 3.5),
                        ),
                      ),
                      Text(
                        "Lvl Başına",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.screenWidth(context, x: 3.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.screenWidth(context, x: 15),
            width: screenSize.screenWidth(context, x: 98),
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.screenWidth(context, x: 15),
                  child: Text(
                    "${widget.champion.partype.toUpperCase()}:",
                    style: TextStyle(
                      fontSize: screenSize.screenWidth(context, x: 3),
                    ),
                  ),
                ),
                Container(
                  width: screenSize.screenWidth(context, x: 80.0),
                  height: screenSize.screenWidth(context, x: 7.0),
                  decoration: BoxDecoration(
                    color: widget.champion.partype.toString() == "Mana"
                        ? Colors.blue[400]
                        : widget.champion.partype.toString() == "Enerji"
                            ? Colors.orange[400]
                            : Colors.red[400],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.champion.stats["mp"].toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.screenWidth(context, x: 3.5),
                        ),
                      ),
                      Text(
                        "  +(${widget.champion.stats["mpperlevel"].toString()})",
                        style: TextStyle(
                          color: widget.champion.partype.toString() == "Mana"
                              ? Colors.blue[900]
                              : widget.champion.partype.toString() == "Enerji"
                                  ? Colors.orange[900]
                                  : Colors.red[900],
                          fontSize: screenSize.screenWidth(context, x: 3.5),
                        ),
                      ),
                      Text(
                        "Lvl Başına",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.screenWidth(context, x: 3.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
