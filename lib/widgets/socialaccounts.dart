
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';


class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);


  // _launchURLInstagram() async {
  //   const url = 'https://www.instagram.com/_sinni.sahu_/';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  // _launchURLTwitter() async {
  //   const url = 'https://twitter.com/SinniSahu';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  // _launchURLGithub() async {
  //   const url = 'https://github.com/Xurde-Sni';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  // _launchURLLinkedIn() async {
  //   const url = 'https://www.linkedin.com/in/sinni-sahu03/';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(
        FontAwesomeIcons.twitter,
        // AntDesign.twitter,  // AntDesign from package:flutter_icons
        color: Colors.white,
      ).mdClick(() {            // mdClick == onPressed
        // _launchURLTwitter();
        launch("https://twitter.com/SinniSahu");
      }).make(),
      20.widthBox,
      const Icon(
        FontAwesomeIcons.instagram,
        // AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        // _launchURLInstagram();
        launch("https://www.instagram.com/_sinni.sahu_/");
      }).make(),
      20.widthBox,
      const Icon(
        FontAwesomeIcons.linkedinIn,
        // AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        // _launchURLLinkedIn();
        launch("https://www.linkedin.com/in/sinni-sahu03/");
      }).make(),
      20.widthBox,
      const Icon(
        FontAwesomeIcons.github,
        // AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        // _launchURLGithub();
        launch("https://github.com/SinniSahu");
      }).make()
    ].hStack();
  }
}