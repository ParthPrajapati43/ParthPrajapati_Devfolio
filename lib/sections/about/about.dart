import 'package:flutter/material.dart';
import 'package:parth_prajapati_devfolio/sections/about/desktop_about.dart';
import 'package:parth_prajapati_devfolio/sections/about/mobile_about.dart';
import 'package:parth_prajapati_devfolio/sections/about/tab_about.dart';

import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileAbout(),
      tablet: TabAbout(),
      desktop: DesktopAbout(),
    );
  }
}
