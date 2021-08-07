import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({Key? key}) : super(key: key);

  @override
  _AboutmeState createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: 250.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Hello, My Name is Abhishek Chhabra',
                  speed: Duration(microseconds: 64400),
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 44),
                  textAlign: TextAlign.center),
            ],
            isRepeatingAnimation: false,
          ),
          Container(
            width: 600,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text:
                              "I am pursing my MCA degree from New Horizon College of engineering. I am full stack developer in Flutter, I am passionate about App Development, and strive to better myself as a developer, and development community as a whole, ",
                          style: TextStyle(color: Colors.white, height: 1.5)),
                      TextSpan(
                        text: "Flutter and I have good knowledge of C, ",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.amber[200],
                            height: 1.5),
                      ),
                      TextSpan(
                          text:
                              "I am passionate about App Development, and strive to better myself as a developer, and development community as a whole,",
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Contact Me"),
                  style: OutlinedButton.styleFrom(
                      shadowColor: Colors.green,
                      primary: Colors.white,
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.white))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
