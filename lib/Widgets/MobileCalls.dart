import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/PortMobile.dart';
import 'package:portfolio/Widgets/port.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileCallPort extends StatelessWidget {
  const MobileCallPort ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;
    return ScreenTypeLayout(
      mobile: PortMobile(width: kWidth,),
      tablet: Port(width: kWidth/3,),
    );
  }
}
