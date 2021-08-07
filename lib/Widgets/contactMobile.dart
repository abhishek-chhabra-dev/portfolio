import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Navigations/NavBar.dart';
import 'package:portfolio/Navigations/NavMenu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/const.dart';

class Contactmobile extends StatefulWidget {
  const Contactmobile({Key? key}) : super(key: key);

  @override
  _ContactmobileState createState() => _ContactmobileState();
}

class _ContactmobileState extends State<Contactmobile> {
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
              margin: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
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
                ],
              ),
            ),
            fixSizeh,
            fixSizeh,
            fixSizeh,
            fixSizeh,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                fixSizew,
                fixSizew,
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
            fixSizeh,
            fixSizeh,
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
            fixSizeh,
            fixSizeh,
          ],
        ),
      ),
    );
  }
}
