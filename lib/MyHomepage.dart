import 'package:flutter/material.dart';
import 'package:portfolio/Navigations/NavBar.dart';

import 'package:portfolio/Navigations/NavMenu.dart';
import 'package:portfolio/Widgets/About.dart';
import 'package:portfolio/const.dart';

class MyHomePage extends StatefulWidget {
  final title;
  const MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Aboutme(),
          ],
        ),
      ),
    );
  }
}
