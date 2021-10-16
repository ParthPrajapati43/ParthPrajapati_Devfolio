// @dart=2.9

import 'package:flutter/material.dart';
import 'package:parth_prajapati_devfolio/sections/home/desktop_home.dart';
import 'package:parth_prajapati_devfolio/sections/home/mobile_home.dart';
import 'package:parth_prajapati_devfolio/sections/home/tab_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileHome(),
      tablet: TabHome(),
      desktop: DesktopHome(),
    );
  }
}
