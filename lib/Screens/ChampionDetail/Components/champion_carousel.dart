import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Screens/ChampionDetail/champion_detail.dart';

class ChampionCarousel extends StatelessWidget {
  const ChampionCarousel({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ChampionDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.champion.skins.length,
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        height: screenSize.screenHeight(context, x: 35),
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (context, index, subindex) {
        return Stack(
          children: [
            SizedBox(
              width: screenSize.screenWidth(context),
              height: screenSize.screenHeight(context, x: 35),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                child: Image.network(
                  "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/${widget.champion.id}_${widget.champion.skins[index]["num"]}.jpg",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
