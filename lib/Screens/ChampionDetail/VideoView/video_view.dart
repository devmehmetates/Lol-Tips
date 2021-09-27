import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/App/size_config.dart';
import 'package:loltips/Components/my_appbar.dart';
import 'package:loltips/Models/champion_detail.dart';
import 'package:video_player/video_player.dart';

class VideoView extends StatefulWidget {
  const VideoView({
    Key? key,
    required this.data,
    required this.urlKey,
  }) : super(key: key);
  final Champion data;
  final dynamic urlKey;
  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  late VideoPlayerController _controller0;
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  late VideoPlayerController _controller4;

  int selectedImage = 0;
  @override
  void initState() {
    super.initState();

    _controller0 = VideoPlayerController.network(
        "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/${widget.urlKey}/ability_${widget.urlKey}_Q1.webm")
      ..initialize().then((_) {
        setState(() {});
      });

    _controller1 = VideoPlayerController.network(
        "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/${widget.urlKey}/ability_${widget.urlKey}_W1.webm")
      ..initialize().then((_) {
        setState(() {});
      });
    _controller2 = VideoPlayerController.network(
        "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/${widget.urlKey}/ability_${widget.urlKey}_E1.webm")
      ..initialize().then((_) {
        setState(() {});
      });
    _controller3 = VideoPlayerController.network(
        "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/${widget.urlKey}/ability_${widget.urlKey}_R1.webm")
      ..initialize().then((_) {
        setState(() {});
      });
    _controller4 = VideoPlayerController.network(
        "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/${widget.urlKey}/ability_${widget.urlKey}_P1.webm")
      ..initialize().then((_) {
        setState(() {});
      });
  }

  var colorList = [
    mainColor,
    Colors.purple,
    Colors.red,
    Colors.orange,
    Colors.indigo,
  ];
  late List<VideoPlayerController> controllerList = [
    _controller4,
    _controller0,
    _controller1,
    _controller2,
    _controller3,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                5,
                (index) => smallVideoViews(
                    index, widget.data.spells, screenSize, colorList),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.screenWidth(context, x: 2),
            vertical: screenSize.screenWidth(context, x: 2),
          ),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                child: skillVideo(
                  controllerList[selectedImage],
                  colorList[selectedImage],
                ),
              ),
              SizedBox(height: screenSize.screenHeight(context, x: 1)),
              skillName(context),
              skillDesc(context),
            ],
          ),
        ),
        SizedBox(height: screenSize.screenWidth(context, x: 2)),
      ],
    );
  }

  Text skillName(BuildContext context) {
    return Text(
      selectedImage == 0
          ? widget.data.passive["name"]
          : widget.data.spells[selectedImage - 1]["name"].toString(),
      style: TextStyle(
        fontSize: screenSize.screenWidth(context, x: 5),
        color: selectedImage == 0
            ? mainColor
            : selectedImage == 1
                ? Colors.purple[400]
                : selectedImage == 2
                    ? Colors.red
                    : selectedImage == 3
                        ? Colors.orange
                        : selectedImage == 4
                            ? Colors.indigo
                            : Colors.transparent,
      ),
    );
  }

  Padding skillDesc(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.screenWidth(context, x: 2)),
      child: SizedBox(
        height: screenSize.screenHeight(context, x: 12),
        child: Text(
          selectedImage == 0
              ? widget.data.passive["description"]
                  .toString()
                  .replaceAll("<status>", "")
                  .replaceAll("</status>", "")
                  .replaceAll("<br>", "")
                  .replaceAll("<font color='#9b0f5f'>", "")
                  .replaceAll("</font>", "")
                  .replaceAll("<keywordMajor>", "")
                  .replaceAll("</keywordMajor>", "")
                  .replaceAll("<physicalDamage>", "")
                  .replaceAll("</physicalDamage>", "")
                  .replaceAll("<font color='#FFF673'>", "")
                  .replaceAll("<font color='#fe5c50'>", "")
                  .replaceAll("<font color='#8484fb'>", "")
                  .replaceAll("<font color='#FF9900'>", "")
                  .replaceAll("<font color='#cccc00'>", "")
                  .replaceAll("<font color='#6655CC'>", "")
                  .replaceAll("<keywordName>", "")
                  .replaceAll("</keywordName>", "")
                  .replaceAll("</factionIonia1>", "")
                  .replaceAll("<factionIonia1>", "")
                  .replaceAll("<font color='#99FF99'>", "")
                  .replaceAll("<speed>", "")
                  .replaceAll("</speed>", "")
                  .replaceAll("<magicDamage>", "")
                  .replaceAll("</magicDamage>", "")
                  .replaceAll("<OnHit>", "")
                  .replaceAll("</OnHit>", "")
                  .toString()
              : widget.data.spells[selectedImage - 1]["description"]
                  .toString()
                  .replaceAll("<status>", "")
                  .replaceAll("</status>", "")
                  .replaceAll("<br>", "")
                  .replaceAll("<font color='#9b0f5f'>", "")
                  .replaceAll("</font>", "")
                  .replaceAll("<keywordMajor>", "")
                  .replaceAll("</keywordMajor>", "")
                  .replaceAll("<keywordName>", "")
                  .replaceAll("</keywordName>", "")
                  .replaceAll("<physicalDamage>", "")
                  .replaceAll("</physicalDamage>", "")
                  .replaceAll("<factionIonia1>", "")
                  .replaceAll("</factionIonia1>", "")
                  .replaceAll("<font color='#FFF673'>", "")
                  .replaceAll("<font color='#fe5c50'>", "")
                  .replaceAll("<font color='#8484fb'>", "")
                  .replaceAll("<font color='#FF9900'>", "")
                  .replaceAll("<font color='#cccc00'>", "")
                  .replaceAll("<font color='#6655CC'>", "")
                  .replaceAll("<font color='#99FF99'>", "")
                  .replaceAll("<speed>", "")
                  .replaceAll("</speed>", "")
                  .replaceAll("<magicDamage>", "")
                  .replaceAll("</magicDamage>", "")
                  .replaceAll("<OnHit>", "")
                  .replaceAll("</OnHit>", "")
                  .toString(),
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: screenSize.screenWidth(context, x: 3.3),
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  AspectRatio skillVideo(VideoPlayerController controller, Color? color) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: VideoPlayer(controller)),
          Positioned.fill(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: controller.value.isPlaying
                    ? Colors.transparent
                    : Colors.black.withOpacity(0.6),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: controller.value.isPlaying
                        ? Colors.transparent
                        : color!,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  controller.value.isPlaying
                      ? controller.pause()
                      : controller.play();
                });
              },
              child: Text(
                "Oynat",
                style: TextStyle(
                  color:
                      controller.value.isPlaying ? Colors.transparent : color!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector smallVideoViews(
      int index, dynamic data, SizeConfig screenSize, List colorList) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
          _controller0.pause();
          _controller1.pause();
          _controller2.pause();
          _controller3.pause();
          _controller4.pause();
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.all(screenSize.screenWidth(context, x: 3)),
        height: screenSize.screenWidth(context, x: 12),
        width: screenSize.screenWidth(context, x: 12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          border: Border.all(
            color: selectedImage == index
                ? colorList[selectedImage]
                : Colors.transparent,
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Image.network(index == 0
              ? "http://ddragon.leagueoflegends.com/cdn/11.15.1/img/passive/${widget.data.passive["image"]["full"].toString()}"
              : "http://ddragon.leagueoflegends.com/cdn/11.15.1/img/spell/${data[index - 1]["id"]}.png"),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller0.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }
}
