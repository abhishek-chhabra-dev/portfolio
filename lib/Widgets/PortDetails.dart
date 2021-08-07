import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/DownloadAPK.dart';
import 'package:portfolio/const.dart';

class PortDetail extends StatelessWidget {
  final width;
  const PortDetail({Key? key, @required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Night Ninja Portfolio App",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 32,
                    color: Colors.amber,
                  ),
                ),
                TextSpan(
                    text:
                        "\n\nThis app is simple portfolio app that is based on Flutter, it has beautiful right side Custom App bar, and i have used Neumorphic Style.",
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
              ],
            ),
          ),
          fixSizeh,
          fixSizeh,
          fixSizeh,
          OutlineButton(
            onPressed: () {openInANewTab("https://bit.ly/Night-Ninja-Portfolio");},
            hoverColor: hoverColor,
            color: Colors.black12,
            child: Text("Checkout App"),
          ),
        ],
      ),
    );
  }
}
