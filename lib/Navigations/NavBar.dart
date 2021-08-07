import 'package:flutter/material.dart';
import 'package:portfolio/Navigations/NavBarDesktop.dart';
import 'package:portfolio/Navigations/NavBarMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarDesktop(),
    );
  }
}
