// @dart=2.9

import 'package:flutter/material.dart';
import 'package:parth_prajapati_devfolio/constants.dart';

class SocialMediaIconBtn extends StatelessWidget {

  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  SocialMediaIconBtn(
      {this.icon, this.socialLink, this.height, this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.asset(icon),
        iconSize: height,
        onPressed: () => launchURL(socialLink),
        hoverColor: kPrimaryColor,
      ),
    );
  }
}
