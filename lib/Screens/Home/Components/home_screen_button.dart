import 'package:flutter/material.dart';
import 'package:loltips/App/constants.dart';
import 'package:loltips/App/size_config.dart';

class HomeScreenButton extends StatelessWidget {
  const HomeScreenButton({
    Key? key,
    required this.screenSize,
    required this.image,
    required this.title,
    required this.isBeta,
    this.onClick,
  }) : super(key: key);

  final SizeConfig screenSize;
  final String image;
  final String title;
  final bool isBeta;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          SizedBox(
            width: screenSize.screenWidth(context),
            height: screenSize.screenHeight(context, x: 43),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: screenSize.screenWidth(context),
            height: screenSize.screenHeight(context, x: 43),
            color: Colors.black.withOpacity(0.7),
          ),
          Positioned.fill(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: mainColor),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
              onPressed: onClick ?? () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: screenSize.screenWidth(context, x: 10),
                    ),
                  ),
                  isBeta
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: mainColor,
                              )),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Yakında Gelecek"),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
