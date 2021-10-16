// @dart=2.9

import 'package:flutter/material.dart';
import 'package:parth_prajapati_devfolio/sections/skills/desktop_skills.dart';
import 'package:parth_prajapati_devfolio/sections/skills/mobile_skills.dart';
import 'package:parth_prajapati_devfolio/sections/skills/tab_skills.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileSkills(),
      tablet: TabSkills(),
      desktop: DesktopSkills(),
    );
  }
}
