import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/DownloadAPK.dart';
import 'package:portfolio/const.dart';

class PortDetail1 extends StatelessWidget {
  final width;
  const PortDetail1({Key? key, @required this.width}) : super(key: key);

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
                  text: "ToDoRa - A simple yet powerful ToDo App",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 32,
                    color: Colors.amber,
                  ),
                ),
                TextSpan(
                    text:
                        "\n\nI created This app to set ToDo, It does support multiple Themes such as light and dark theme. This app store the data in SQLite, in local machine that ensure that your data on this app is secure, This app also has a Calender and also you can set calender events in it.",
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
                  text: "\n → SQLite",
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
            onPressed: () {
              // openInANewTab("https://bit.ly/3zZwgto");
            },
            hoverColor: hoverColor,
            color: Colors.black12,
            child: Text("Checkout App"),
          ),
        ],
      ),
    );
  }
}
