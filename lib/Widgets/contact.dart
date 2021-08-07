import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Navigations/NavBar.dart';
import 'package:portfolio/Navigations/NavMenu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/const.dart';

class Contactme extends StatefulWidget {
  const Contactme({Key? key}) : super(key: key);

  @override
  _ContactmeState createState() => _ContactmeState();
}

class _ContactmeState extends State<Contactme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      endDrawer: MobileDrawer(),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            NavBar(),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Get in touch\n",
                                  style: TextStyle(
                                      fontSize: 42,
                                      color: Colors.white,
                                      height: 2)),
                              TextSpan(
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      height: 2),
                                  text:
                                      "If you wanna get in touch, talk to me about a project collaboration or just say hi, send an email to "),
                              TextSpan(
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: primaryColor,
                                      height: 2),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      var mail =
                                          "mailto:achhabra04.ac@gmail.com";
                                      if (await canLaunch(mail)) {
                                        await launch(mail);
                                      } else {
                                        throw 'Could not launch $mail';
                                      }
                                    },
                                  text: "  achhabra04.ac@gmail.com  "),
                              TextSpan(
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      height: 2),
                                  text: "and ~let's talk."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  fixSizew,
                  Expanded(
                      child: Container(
                          child: Column(children: [
                    fixSizeh,
                    fixSizeh,
                    Image(image: AssetImage("assets/images/contactme.jpg"))
                  ])))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Social:",
                style: TextStyle(fontSize: 24),
              ),
              InkWell(
                onTap: () async {
                  var stack =
                      "https://stackoverflow.com/users/15529750/night-ninja";
                  if (await canLaunch(stack)) {
                    await launch(stack);
                  } else {
                    throw 'Could not launch $stack';
                  }
                },
                onHover: (hovering) {
                  setState(() => isHovering = hovering);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                  padding: EdgeInsets.all(isHovering ? 15 : 10),
                  decoration: BoxDecoration(
                    color: isHovering ? Colors.blueGrey : Colors.black26,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      var stack =
                          "https://stackoverflow.com/users/15529750/night-ninja";
                      if (await canLaunch(stack)) {
                        await launch(stack);
                      } else {
                        throw 'Could not launch $stack';
                      }
                    },
                    child: Text("Linkdin"),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  var stack =
                      "https://stackoverflow.com/users/15529750/night-ninja";
                  if (await canLaunch(stack)) {
                    await launch(stack);
                  } else {
                    throw 'Could not launch $stack';
                  }
                },
                onHover: (hovering) {
                  setState(() => isHovering1 = hovering);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                  padding: EdgeInsets.all(isHovering1 ? 15 : 10),
                  decoration: BoxDecoration(
                    color: isHovering1 ? Colors.blueGrey : Colors.black26,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      var stack =
                          "https://stackoverflow.com/users/15529750/night-ninja";
                      if (await canLaunch(stack)) {
                        await launch(stack);
                      } else {
                        throw 'Could not launch $stack';
                      }
                    },
                    child: Text("Stack Overflow"),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  var stack =
                      "https://stackoverflow.com/users/15529750/night-ninja";
                  if (await canLaunch(stack)) {
                    await launch(stack);
                  } else {
                    throw 'Could not launch $stack';
                  }
                },
                onHover: (hovering) {
                  setState(() => isHovering2 = hovering);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                  padding: EdgeInsets.all(isHovering2 ? 15 : 10),
                  decoration: BoxDecoration(
                    color: isHovering2 ? Colors.blueGrey : Colors.black26,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      var stack =
                          "https://stackoverflow.com/users/15529750/night-ninja";
                      if (await canLaunch(stack)) {
                        await launch(stack);
                      } else {
                        throw 'Could not launch $stack';
                      }
                    },
                    child: Text("Git Hub"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
