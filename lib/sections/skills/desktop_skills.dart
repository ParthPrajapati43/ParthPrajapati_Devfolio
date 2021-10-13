import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parth_prajapati_devfolio/provider/theme_provider.dart';
import 'package:parth_prajapati_devfolio/widgets/custom_text_heading.dart';
import 'package:parth_prajapati_devfolio/widgets/skill_item.dart';
import 'package:parth_prajapati_devfolio/widgets/tool_tech_widget.dart';
import 'package:provider/provider.dart';
import 'package:parth_prajapati_devfolio/constants.dart';

class DesktopSkills extends StatelessWidget {
  const DesktopSkills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nMy Skills"),
          const CustomSectionSubHeading(text: "What am I good at!"),
          const SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kIsWeb
                      ? SelectableText("SOFTWARE\nDEVELOPMENT",
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200,
                            letterSpacing: 1.0,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                          ))
                      : Text(
                          "SOFTWARE\nDEVELOPMENT",
                          style: TextStyle(
                            fontSize: 20,
                            color: _themeProvider.lightTheme
                                ? Colors.grey[700]
                                : Colors.white,
                          ),
                        ),
                  SizedBox(
                    height: height / 6,
                  ),
                  kIsWeb
                      ? SelectableText("WEB/APP\nDEVELOPMENT",
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200,
                            letterSpacing: 1.0,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                          ))
                      : Text(
                          "WEB/APP\nDEVELOPMENT",
                          style: TextStyle(
                            fontSize: 20,
                            color: _themeProvider.lightTheme
                                ? Colors.grey[700]
                                : Colors.white,
                          ),
                        ),
                  SizedBox(
                    height: height / 6,
                  ),
                  kIsWeb
                      ? SelectableText("VERSION\nCONTROL",
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200,
                            letterSpacing: 1.0,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                          ))
                      : Text(
                          "VERSION\nCONTROL",
                          style: TextStyle(
                            fontSize: 20,
                            color: _themeProvider.lightTheme
                                ? Colors.grey[700]
                                : Colors.white,
                          ),
                        ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < kSoftwareDevelopmentIcons.length; ++i)
                        SkillItem(
                            skillIcon: kSoftwareDevelopmentIcons[i],
                            skillText: kSoftwareDevelopmentTexts[i],
                            skillRating: kSoftwareDevelopmentRatings[i],
                            iconColor: _themeProvider.lightTheme
                                ? Colors.grey[800]
                                : Colors.white,
                            iconSize: height / 16),
                    ],
                  ),
                  SizedBox(height: height > 660 ? 30.0 * (height / 660) : 30.0),
                  Row(
                    children: [
                      for (int i = 0; i < 7; ++i)
                        SkillItem(
                            skillIcon: kWebAppDevelopmentIcons[i],
                            skillText: kWebAppDevelopmentTexts[i],
                            skillRating: kWebAppDevelopmentRatings[i],
                            iconColor: _themeProvider.lightTheme
                                ? Colors.grey[800]
                                : Colors.white,
                            iconSize: height / 16),
                    ],
                  ),
                  SizedBox(height: height > 660 ? 10.0 * (height / 660) : 10.0),
                  Row(
                    children: [
                      for (int i = 7; i < kWebAppDevelopmentIcons.length; ++i)
                        SkillItem(
                            skillIcon: kWebAppDevelopmentIcons[i],
                            skillText: kWebAppDevelopmentTexts[i],
                            skillRating: kWebAppDevelopmentRatings[i],
                            iconColor: _themeProvider.lightTheme
                                ? Colors.grey[800]
                                : Colors.white,
                            iconSize: height / 16),
                    ],
                  ),
                  SizedBox(height: height > 660 ? 30.0 * (height / 660) : 30.0),
                  Row(
                    children: [
                      for (int i = 0; i < kVersionControlIcons.length; ++i)
                        SkillItem(
                            skillIcon: kVersionControlIcons[i],
                            skillText: kVersionControlTexts[i],
                            skillRating: kVersionControlRatings[i],
                            iconColor: _themeProvider.lightTheme
                                ? Colors.grey[800]
                                : Colors.white,
                            iconSize: height / 16),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: height * 0.04,
          ),
        ],
      ),
    );
  }
}
