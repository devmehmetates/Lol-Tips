import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class ChampionTips extends StatelessWidget {
  const ChampionTips({
    Key? key,
    required this.widget,
  }) : super(key: key);
  final ChampionDetailScreen widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(screenSize.screenWidth(context, x: 1)),
          child: Text(
            "ÖNERİLER",
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.w200,
              fontSize: screenSize.screenWidth(context, x: 9),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(screenSize.screenWidth(context, x: 3)),
          child: Row(
            children: [
              tipsDetail(
                context,
                "${widget.champion.name}'e Karşı",
                widget.champion.enemytips,
                Colors.red,
              ),
              const Spacer(),
              tipsDetail(
                context,
                "${widget.champion.name} iken",
                widget.champion.allytips,
                Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column tipsDetail(
      BuildContext context, String title, List tips, Color? color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: screenSize.screenWidth(context, x: 45),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontSize: screenSize.screenWidth(context, x: 5),
              height: 1.25,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        Container(
          height: screenSize.screenHeight(context, x: 35),
          width: screenSize.screenWidth(context, x: 45),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            border: Border.all(
              color: color!,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: ListView.builder(
              itemCount: tips.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(
                    screenSize.screenWidth(context, x: 2),
                  ),
                  child: SizedBox(
                    width: screenSize.screenWidth(context, x: 45),
                    child: Column(
                      children: [
                        Text(
                          "◼${tips[index].toString().replaceAll("[", "").replaceAll("]", "")}",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: screenSize.screenWidth(context, x: 3.4),
                            height: 1.25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
