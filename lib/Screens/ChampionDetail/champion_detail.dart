import 'dart:io';
import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Models/champion_detail.dart';
import 'package:loltips/Screens/ChampionDetail/Components/champion_hpmp.dart';
import 'package:loltips/Screens/ChampionDetail/Components/champion_roles.dart';
import 'package:loltips/Screens/ChampionDetail/Components/champion_stats.dart';
import 'package:loltips/Screens/ChampionDetail/Components/champion_tips.dart';
import 'package:loltips/Screens/ChampionDetail/Components/strong_graph.dart';
import 'package:loltips/Screens/ChampionDetail/Components/champion_carousel.dart';
import 'package:loltips/Screens/ChampionDetail/Components/champion_tale.dart';
import 'package:loltips/Screens/ChampionDetail/Components/champion_title.dart';
import 'package:loltips/Screens/ChampionDetail/VideoView/video_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ChampionDetailScreen extends StatefulWidget {
  const ChampionDetailScreen({
    Key? key,
    required this.champion,
  }) : super(key: key);

  final Champion champion;

  @override
  _ChampionDetailScreenState createState() => _ChampionDetailScreenState();
}

class _ChampionDetailScreenState extends State<ChampionDetailScreen> {
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(widget.champion.name, context),
      body: ListView(
        children: [
          ChampionCarousel(widget: widget),
          ChampionTitle(widget: widget),
          ChampionTale(opened: opened, widget: widget),
          SizedBox(height: screenSize.screenWidth(context, x: 2)),
          moreHideButtons(context),
          StrongGraph(
              widget: widget,
              title: "SALDIRI:",
              type: 0,
              color: Colors.red[700]),
          StrongGraph(
              widget: widget,
              title: "SİHİR:",
              type: 2,
              color: Colors.purple[700]),
          StrongGraph(
              widget: widget,
              title: "SAVUNMA:",
              type: 1,
              color: Colors.blue[700]),
          StrongGraph(
              widget: widget,
              title: "ZORLUK:",
              type: 3,
              color: Colors.green[700]),
          ChampionRoles(widget: widget),
          ChampionHPMP(widget: widget),
          ChampionStats(
            widget: widget,
            firstView: const [
              "SALDIRI GÜCÜ",
              "attackdamage",
              "attackdamageperlevel",
              Colors.red,
            ],
            secontView: const [
              "ZIRH",
              "armor",
              "armorperlevel",
              Colors.orange,
            ],
            thirtView: const [
              "HARAKET HIZI",
              "movespeed",
              "movespeed",
              Colors.blue
            ],
          ),
          ChampionStats(
            widget: widget,
            firstView: const [
              "SALDIRI HIZI",
              "attackspeed",
              "attackspeedperlevel",
              Colors.cyan,
            ],
            secontView: const [
              "BÜYÜ DİRENCİ",
              "spellblock",
              "spellblockperlevel",
              Colors.purple,
            ],
            thirtView: const [
              "KRİTİK V. İHTİMALİ",
              "crit",
              "crit",
              Colors.redAccent,
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenSize.screenWidth(context, x: 1)),
                child: Text(
                  "YETENEKLER",
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w200,
                    fontSize: screenSize.screenWidth(context, x: 9),
                  ),
                ),
              ),
              VideoView(
                data: widget.champion,
                urlKey: int.parse(widget.champion.key) < 10
                    ? "000${widget.champion.key}"
                    : int.parse(widget.champion.key) < (100)
                        ? "00${widget.champion.key}"
                        : "0${widget.champion.key}",
              ),
            ],
          ),
          ChampionTips(widget: widget),
        ],
      ),
    );
  }

  Padding moreHideButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.screenWidth(context, x: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.screenWidth(context, x: 1),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  screenSize.screenWidth(context, x: 45),
                  screenSize.screenHeight(context, x: 4),
                ),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: mainColor),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  opened = !opened;
                });
              },
              child: Text(
                opened ? "Hikayeyi Gizle" : "Hikayenin Tamamı",
                style: TextStyle(
                  fontSize: screenSize.screenWidth(context, x: 3),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.screenWidth(context, x: 1),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  screenSize.screenWidth(context, x: 45),
                  screenSize.screenHeight(context, x: 4),
                ),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: mainColor),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () async {
                if (Platform.isAndroid) {
                  await launch(
                      "https://tr.leagueoflegends.com/tr-tr/champions/${widget.champion.name.toLowerCase()}/");
                }
              },
              child: Text(
                "Daha Fazlası",
                style: TextStyle(
                  fontSize: screenSize.screenWidth(context, x: 3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
