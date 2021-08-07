import 'package:flutter/material.dart';
import 'package:portfolio/MyHomepage.dart';
import 'package:portfolio/Widgets/MobileCalls.dart';

import 'package:portfolio/Widgets/contactcall.dart';
import 'package:portfolio/const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abhishek Chhabra',
      theme: ThemeData(
        primarySwatch: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: hoverColor,
        brightness: Brightness.dark,
        textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Dancing Script',
            displayColor: Colors.white,
            bodyColor: Colors.white,
            fontSizeDelta: 12),
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/portfolio': (context) => MobileCallPort(),
        '/contactme': (context) => MobileCallContact(),
      },
      // home: MyHomePage(title: "Abhishek chhabra"),
    );
  }
}
