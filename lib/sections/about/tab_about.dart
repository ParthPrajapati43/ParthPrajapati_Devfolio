import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parth_prajapati_devfolio/constants.dart';
import 'package:parth_prajapati_devfolio/provider/theme_provider.dart';
import 'package:parth_prajapati_devfolio/widgets/about_me_meta_data.dart';
import 'package:parth_prajapati_devfolio/widgets/custom_button.dart';
import 'package:parth_prajapati_devfolio/widgets/custom_text_heading.dart';
import 'package:parth_prajapati_devfolio/widgets/tool_tech_widget.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

class TabAbout extends StatelessWidget {
  const TabAbout({ Key key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nAbout Me"),
          const CustomSectionSubHeading(text: "Get to know me :)"),
          Image.asset(
            'assets/ParthCircle.png',
            height: height * 0.3,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.028),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Text(
            "I'm Parth Prajapati, a MERN stack developer, Flutter Developer and Software Developer.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.035,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I'm a Final Year Computer Engineering student enrolled in Pandit Deendayal Energy University (PDEU, formerly PDPU), Gandhinagar. I have been developing Softwares, Websites and Mobile Apps for over 2 years now. I have worked in a Cyber Security based startup as a Full Stack Developer and helped them in launching their product and got valuable learning experience. I am always ready to learn new things and welcome new opporunities.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.02,
              color: Colors.grey[500],
              height: 2.0,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900], width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "What makes me an ideal candidate?",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.018),
            ),
          ),
          Column(
            children: [
              for (int row = 0; row < ((kQualities.length + 2) / 3); ++row)
                Row(
                  children: [
                    if (row * 3 + 0 < kQualities.length)
                      ToolTechWidget(
                        techName: kQualities[row * 3 + 0],
                      ),
                    if (row * 3 + 1 < kQualities.length)
                      ToolTechWidget(
                        techName: kQualities[row * 3 + 1],
                      ),
                    if (row * 3 + 2 < kQualities.length)
                      ToolTechWidget(
                        techName: kQualities[row * 3 + 2],
                      ),
                  ],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900], width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AboutMeMetaData(
                    data: "Name",
                    information: "Parth Prajapati",
                  ),
                  AboutMeMetaData(
                    data: "Age",
                    information: "22",
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AboutMeMetaData(
                    data: "Email",
                    information: "parthy4399@gmail.com",
                  ),
                  AboutMeMetaData(
                    data: "From",
                    information: "Gujarat, India",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: height * 0.0025,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedCustomBtn(
                    btnText: "Resume",
                    onPressed: () {
                      kIsWeb
                          ? html.window.open(kResumeLink, "pdf")
                          : launchURL(kResumeLink);
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}