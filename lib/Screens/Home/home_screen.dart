import 'package:flutter/material.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionsList/champion_list.dart';

import 'Components/home_screen_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeScreenButton(
            screenSize: screenSize,
            image:
                "https://im.haberturk.com/2021/03/18/ver1616078490/3010368_810x458.jpg",
            isBeta: false,
            title: "Şampiyonlar",
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChampionsScreen()));
            },
          ),
          SizedBox(height: screenSize.screenHeight(context, x: 1)),
          HomeScreenButton(
            screenSize: screenSize,
            image:
                "https://cdn.filestackcontent.com/K3eOQyDeT9qyN5wQbHXl/convert?cache=true&crop=0%2C0%2C1920%2C960&crop_first=true&quality=90&w=1920",
            title: "Bir Sihirdar Ara",
            isBeta: true,
          ),
        ],
      ),
    );
  }
}
