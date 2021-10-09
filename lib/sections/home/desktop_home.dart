import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parth_prajapati_devfolio/animations/button_animation.dart';
import 'package:parth_prajapati_devfolio/animations/entrance_fader.dart';
import 'package:parth_prajapati_devfolio/constants.dart';
import 'package:parth_prajapati_devfolio/provider/theme_provider.dart';
import 'package:parth_prajapati_devfolio/widgets/adaptive_text.dart';
import 'package:parth_prajapati_devfolio/widgets/social_media_icon.dart';
import 'package:universal_html/html.dart' as html;
import 'package:provider/provider.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return Container(
      height: height - 50,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            left: width * 0.01,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  _themeProvider.lightTheme ? 'assets/ParthWhite.png' : 'assets/ParthBlack.png',
                  height: width < 1200 ? height * 0.8 : height * 0.85,
                ),
              ),
            ),
          ),
          Positioned(
            right: width * 0.05,
            child: Container(
              margin:
                  EdgeInsets.fromLTRB(0, height * 0.2, width * 0.1, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AdaptiveText(
                        "WELCOME TO MY PORTFOLIO! ",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.w300,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          "assets/hi.gif",
                          height: height * 0.05,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  AdaptiveText(
                    "Prajapati",
                    style: GoogleFonts.montserrat(
                        fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                        fontWeight: FontWeight.w100,
                        color: _themeProvider.lightTheme
                            ? Colors.black
                            : Colors.white,
                        letterSpacing: 4.0),
                  ),
                  AdaptiveText(
                    "Parth",
                    style: GoogleFonts.montserrat(
                        color: _themeProvider.lightTheme
                            ? Colors.black
                            : Colors.white,
                        fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 5.0),
                  ),
                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
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
                              fontWeight: FontWeight.w200,
                              color: _themeProvider.lightTheme
                                  ? Colors.black
                                  : Colors.white,
                            ),
                            text: const [
                              " Flutter Developer",
                              " MERN Stack Developer",
                              " Software Developer"
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      kSocialLinks.length,
                      (index) => WidgetAnimator(
                        child: SocialMediaIconBtn(
                          icon: _themeProvider.lightTheme ? kSocialIconsDark[index] : kSocialIconsLight[index],
                          socialLink: kSocialLinks[index],
                          height: height * 0.06,
                          horizontalPadding: width * 0.005,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
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
                          color:
                              _themeProvider.lightTheme ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18.0,
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