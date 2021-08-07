import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/DownloadAPK.dart';
import 'package:portfolio/const.dart';

class PortDetail3 extends StatelessWidget {
  final width;
  const PortDetail3({Key? key, @required this.width}) : super(key: key);

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
                  text: "Mews - News App",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 32,
                    color: Colors.amber,
                  ),
                ),
                TextSpan(
                    text:
                        "\n\nThis is News app, that i created as my first project, this app gets the data from News JSon API. This app support multiple languages and also show the news around the globe, people can search for the news and can see the news in upto 7 Different categories. ",
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
                  text: "\n → JSon API",
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
            onPressed: () {openInANewTab("https://bit.ly/Mews-app");},
            hoverColor: hoverColor,
            color: Colors.black12,
            child: Text("Checkout App"),
          ),
        ],
      ),
    );
  }
}
