import 'package:flutter/material.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class StrongGraph extends StatelessWidget {
  const StrongGraph({
    Key? key,
    required this.widget,
    required this.title,
    required this.type,
    required this.color,
  }) : super(key: key);

  final ChampionDetailScreen widget;
  final String title;
  final int type;
  final Color? color;

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
          children: [
            SizedBox(
              width: screenSize.screenWidth(context, x: 15),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: screenSize.screenWidth(context, x: 3),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: screenSize.screenWidth(context, x: 80),
              height: screenSize.screenWidth(context, x: 3.5),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: widget.champion.info.values.toList()[type],
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.screenWidth(
                        context,
                        x: 1,
                      ),
                    ),
                    child: Container(
                      width: screenSize.screenWidth(context, x: 6.0),
                      height: screenSize.screenWidth(context, x: 4),
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
