import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/App/size_config.dart';
import 'package:loltips/Requests/all_champion_request.dart';

class ChampionImage extends StatelessWidget {
  const ChampionImage({
    Key? key,
    required this.screenSize,
    required this.item,
    required this.champions,
  }) : super(key: key);

  final AsyncSnapshot<Heros> champions;
  final SizeConfig screenSize;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.screenWidth(context, x: 31),
      width: screenSize.screenWidth(context, x: 31),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        image: DecorationImage(
          image: NetworkImage(
              "http://ddragon.leagueoflegends.com/cdn/img/champion/loading/${champions.data!.data[item]['id']}_0.jpg"),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenSize.screenWidth(
              context,
              x: 28,
            ),
            child: Text(
              champions.data!.data[item]['name'].toString(),
              style: TextStyle(
                fontFamily: "myfont",
                color: mainColor,
                fontSize: screenSize.screenWidth(context, x: 4),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
