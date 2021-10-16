// @dart=2.9

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_icons/dev_icons.dart';

// Colors
final Color kPrimaryColor = Colors.green;

// Resume Link
const kResumeLink = "https://drive.google.com/file/d/1DkFKehU2wDUy-bySS8MN_ios2nl3XrEC/view?usp=sharing";

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Social Media
const kSocialIconsLight = [
  "assets/icons/LinkedinLight.png",
  "assets/icons/GitHubLight.png",
  "assets/icons/TwitterLight.png",
  "assets/icons/StackOverflowLight.png",
  "assets/icons/InstagramLight.png",
  "assets/icons/FacebookLight.png",
];

const kSocialIconsDark = [
  "assets/icons/LinkedinDark.png",
  "assets/icons/GitHubDark.png",
  "assets/icons/TwitterDark.png",
  "assets/icons/StackOverflowDark.png",
  "assets/icons/InstagramDark.png",
  "assets/icons/FacebookDark.png",
];

const kSocialLinks = [
  "https://www.linkedin.com/in/parth-prajapati-04031999/",
  "https://github.com/ParthPrajapati43/",
  "https://twitter.com/PARTH_4399",
  "https://stackoverflow.com/users/11665065/parth-prajapati",
  "https://www.instagram.com/parth.4399/",
  "https://www.facebook.com/profile.php?id=100009517429249"
];

// Qualities
const kQualities = [
  "Quick Learner",
  "Curious & Passionate",
  "Good communicator",
  "Team Player",
  "Flexible & Adaptable",
  "Optimistic Thinker"
];

// skills
/* class Skills {
  IconData skillIcon;
  String skillText;
  int skillRating;

  Skills({this.skillIcon, this.skillText, this.skillRating});
} */

const List<IconData> kSoftwareDevelopmentIcons = [
  DevIcons.cPlain,
  DevIcons.cplusplusPlain,
  DevIcons.pythonPlain,
  DevIcons.javaPlain,
  DevIcons.dartPlain,
  DevIcons.mysqlPlain,
];

const kSoftwareDevelopmentTexts = [
  "C Language",
  "C++ Language",
  "Python",
  "Java",
  "Dart",
  "My SQL",
];

const kSoftwareDevelopmentRatings = [4, 4, 4, 3, 4, 4];

const List<IconData> kWebAppDevelopmentIcons = [
  DevIcons.html5Plain,
  DevIcons.css3Plain,
  DevIcons.javascriptPlain,
  DevIcons.nodejsPlain,
  DevIcons.expressOriginal,
  DevIcons.reactOriginal,
  DevIcons.mongodbPlain,
  DevIcons.reduxOriginal,
  DevIcons.flutterPlain,
  DevIcons.firebasePlain,
  DevIcons.materialuiPlain,
  DevIcons.bootstrapPlain,
  DevIcons.herokuPlain,
];

const kWebAppDevelopmentTexts = [
  "HTML5",
  "CSS3",
  "JavaScript",
  "Node Js",
  "Express Js",
  "React Js",
  "Mongo DB",
  "Redux",
  "Flutter",
  "Firebase",
  "Material UI",
  "Bootstrap",
  "Heroku",
];

const kWebAppDevelopmentRatings = [4, 4, 4, 4, 4, 4, 4, 3, 4, 3, 5, 5, 3];

const List<IconData> kVersionControlIcons = [
  DevIcons.gitPlain,
  DevIcons.githubOriginal,
  DevIcons.bitbucketOriginal
];

const kVersionControlTexts = [
  "Git",
  "GitHub",
  "BitBucket"
];

const kVersionControlRatings = [4, 4, 3];
