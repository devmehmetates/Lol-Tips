import 'package:flutter/material.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Requests/all_champion_request.dart';
import 'package:loltips/Requests/champion_detail_request.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';
import 'package:loltips/Screens/ChampionsList/Components/champion_button.dart';
import 'package:loltips/Screens/ChampionsList/Components/champion_image.dart';

class ChampionsScreen extends StatefulWidget {
  const ChampionsScreen({Key? key}) : super(key: key);

  @override
  _ChampionsScreenState createState() => _ChampionsScreenState();
}

class _ChampionsScreenState extends State<ChampionsScreen> {
  late Future<Heros> herosData;

  @override
  void initState() {
    super.initState();
    herosData = getHeros();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar("Tüm Şampiyonlar", context),
      body: championBuilder(),
    );
  }

  FutureBuilder<Heros> championBuilder() {
    return FutureBuilder<Heros>(
      future: herosData,
      builder: (context, champions) {
        if (champions.hasData) {
          return SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                for (var item in champions.data!.data.keys)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenSize.screenWidth(context, x: 1),
                      horizontal: screenSize.screenWidth(context, x: 1.1),
                    ),
                    child: Stack(
                      children: [
                        ChampionImage(
                          screenSize: screenSize,
                          item: item,
                          champions: champions,
                        ),
                        ChampionButton(
                          screenSize: screenSize,
                          onClick: () async {
                            var championBranch = await getChampionDetail(
                                champions.data!.data[item]['id'].toString());
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChampionDetailScreen(
                                    champion: championBranch.champion),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
              ],
            ),
          );
        } else if (champions.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return const Text("Şu anda veriler yüklenemiyor");
      },
    );
  }
}
