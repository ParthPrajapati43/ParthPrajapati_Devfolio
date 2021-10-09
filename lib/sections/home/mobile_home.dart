import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parth_prajapati_devfolio/constants.dart';
import 'package:parth_prajapati_devfolio/provider/theme_provider.dart';
import 'package:parth_prajapati_devfolio/widgets/social_media_icon.dart';
import 'package:universal_html/html.dart' as html;
import 'package:provider/provider.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({ Key key }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            left: -width * 0.25,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                _themeProvider.lightTheme
                    ? 'assets/ParthWhite.png'
                    : 'assets/ParthBlack.png',
                height: height * 0.75,
              ),
            ),
          ),
          Positioned(
            right: width * 0.005,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, height * 0.12, width * 0.07, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "WELCOME TO MY PORTFOLIO! ",
                        style: GoogleFonts.montserrat(
                            fontSize: height * 0.025,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      Image.asset(
                        "assets/hi.gif",
                        height: height * 0.03,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Prajapati",
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.055,
                        color: _themeProvider.lightTheme
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 1.1),
                  ),
                  Text(
                    "Parth",
                    style: GoogleFonts.montserrat(
                        color: _themeProvider.lightTheme
                            ? Colors.black
                            : Colors.white,
                        fontSize: height * 0.055,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: kPrimaryColor,
                      ),
                      TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                              fontSize: height * 0.03,
                              color: _themeProvider.lightTheme
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.w200),
                          text: const [
                            " Flutter Developer",
                            " MERN Stack Developer",
                            " Software Developer"
                          ]),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int index = 0; index < kSocialIconsDark.length; ++index)
                        SocialMediaIconBtn(
                          icon: _themeProvider.lightTheme
                              ? kSocialIconsDark[index]
                              : kSocialIconsLight[index],
                          socialLink: kSocialLinks[index],
                          height: height * 0.03,
                          horizontalPadding: 2.0,
                        )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5.0),
                    child: MaterialButton(
                      height: 45.0,
                      hoverColor: kPrimaryColor.withAlpha(150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: kPrimaryColor)),
                      onPressed: () {
                        html.window.open(
                            'https://drive.google.com/file/d/1DkFKehU2wDUy-bySS8MN_ios2nl3XrEC/view?usp=sharing',
                            "pdf");
                      },
                      child: Text(
                        "RESUME",
                        style: GoogleFonts.montserrat(
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}