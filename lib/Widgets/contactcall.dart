import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/contact.dart';
import 'package:portfolio/Widgets/contactMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileCallContact extends StatelessWidget {
  const MobileCallContact ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;
    return ScreenTypeLayout(
      mobile: Contactmobile(),
      tablet: Contactme(),
    );
  }
}
