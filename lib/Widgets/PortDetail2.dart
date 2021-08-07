import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/DownloadAPK.dart';
import 'package:portfolio/const.dart';

class PortDetail2 extends StatelessWidget {
  final width;

  const PortDetail2({Key? key, @required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:this.width,
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Tap Master - Tap Game",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 32,
                    color: Colors.amber,
                  ),
                ),
                TextSpan(
                    text:
                        "\n\nI have created this game in flutter, it is 2 player offline game, both players get 20%-20% of the screen area in different color player 1 get in red color and player 2 get in blue color, as the player will tap on the either of the side, that side will increase it's size, To will the game either of the player's need to increase it's color size. ",
                    style: TextStyle(color: Colors.white, height: 1.5)),
                TextSpan(
                    text: "\n\nTechnical Sheet: ",
                    style: TextStyle(
                        color: Colors.white, height: 1.5, fontSize: 25)),
                TextSpan(
                  text: "\n → Flutter and Dart",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.amber[200],
                      height: 1.5),
                ),
                TextSpan(
                  text: "\n → Firebase Database",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.amber[200],
                      height: 1.5),
                ),
                TextSpan(
                  text: "\n → SharedPrefrence",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.amber[200],
                      height: 1.5),
                ),
              ],
            ),
          ),
          fixSizeh,
          fixSizeh,
          fixSizeh,
          OutlineButton(
            onPressed: () {openInANewTab("https://bit.ly/TapMasterGame");},
            hoverColor: hoverColor,
            color: Colors.black12,
            child: Text("Checkout App"),
          ),
        ],
      ),
    );
  }
}
