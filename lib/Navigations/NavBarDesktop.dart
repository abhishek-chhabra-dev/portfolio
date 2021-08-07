import 'package:flutter/material.dart';
import 'package:portfolio/const.dart';

class NavBarDesktop extends StatefulWidget {
  @override
  _NavBarDesktopState createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //expand was there
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(38), bottomRight: Radius.circular(38)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(66, 135, 245, 0.6),
                Color.fromRGBO(215, 109, 119, 0.6),
                Color.fromRGBO(255, 175, 123, 0.6),
              ])),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Abhishek Chhabra"),
                width: MediaQuery.of(context).size.width / 1.75,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      if (ModalRoute.of(context)?.settings.name.toString() ==
                          "/") {
                        // Navigator.pop(context);
                        print(ModalRoute.of(context)?.settings.name.toString());
                      } else {
                        setState(() {
                          tabIndex = 0;
                        });
                        print(ModalRoute.of(context)?.settings.name.toString());
                        Navigator.pushReplacementNamed(context, '/');
                      }
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          "  About Me",
                          style: whiteEverywhere,
                        )
                      ],
                    ),
                    style: ButtonStyle(padding: buttonPadding),
                  ),
                  fixSizew,
                  TextButton(
                    onPressed: () {
                      if (ModalRoute.of(context)?.settings.name.toString() ==
                          "/portfolio") {
                        // Navigator.pop(context);
                      } else {
                        setState(() {
                          tabIndex = 1;
                        });
                        Navigator.pushReplacementNamed(context, '/portfolio');
                      }
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.white,
                        ),
                        Text(
                          "  Portfolio",
                          style: whiteEverywhere,
                        )
                      ],
                    ),
                    style: ButtonStyle(padding: buttonPadding),
                  ),
                  fixSizew,
                  TextButton(
                    onPressed: () {
                      if (ModalRoute.of(context)?.settings.name.toString() ==
                          "/contactme") {
                        // Navigator.pop(context);
                        print(
                            "in contact ${ModalRoute.of(context)?.settings.name.toString()}");
                      } else {
                        setState(() {
                          tabIndex = 2;
                          print(
                              "in contact ${ModalRoute.of(context)?.settings.name.toString()}");
                        });
                        Navigator.pushReplacementNamed(context, '/contactme');
                        print(
                            "in contact ${ModalRoute.of(context)?.settings.name.toString()}");
                      }
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.contact_page,
                          color: Colors.white,
                        ),
                        Text(
                          "  Contact Me",
                          style: whiteEverywhere,
                        )
                      ],
                    ),
                    style: ButtonStyle(padding: buttonPadding),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
