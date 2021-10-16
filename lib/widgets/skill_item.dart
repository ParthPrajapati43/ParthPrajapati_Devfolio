// @dart=2.9

import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  final IconData skillIcon;
  final String skillText;
  final int skillRating;
  final Color iconColor;
  final double iconSize;
  const SkillItem(
      {Key key,
      this.skillIcon,
      this.skillText,
      this.skillRating,
      this.iconColor,
      this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: width > 960
              ? (width > 1200 ? 100 * (width / 1200) : 100)
              : (width < 660)
                  ? 82
                  : 90,
          child: IconButton(
              alignment: Alignment.center,
              icon: Icon(
                skillIcon,
                size: iconSize,
                color: iconColor,
              ),
              onPressed: () {
                print("Skill Pressed");
              }),
        ),
        SizedBox(
          height: height > 660 ? 20 * (height / 660) : 20,
        ),
        Text(
          skillText,
          style: TextStyle(
            fontSize:
                height > 660 ? iconSize / 3.5 * (height / 660) : iconSize / 3,
            color: iconColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < skillRating; ++i)
              Icon(Icons.star,
                  color: Colors.green,
                  size: height > 660 ? 15 * (height / 660) : 15),
            for (int i = 0; i < 5 - skillRating; ++i)
              Icon(Icons.star,
                  color: iconColor,
                  size: height > 660 ? 15 * (height / 660) : 15)
          ],
        ),
      ],
    );
  }
}
