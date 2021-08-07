import 'package:flutter/material.dart';
import 'package:portfolio/const.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: deprecated_member_use
          OutlineButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            hoverColor: hoverColor,
            child: Text("Menu"),
          ),
          Text("Abhishek Chhabra")
        ],
      ),
    );
  }
}
