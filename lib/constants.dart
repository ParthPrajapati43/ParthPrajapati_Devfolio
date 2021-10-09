import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
final Color kPrimaryColor = Colors.green;

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
