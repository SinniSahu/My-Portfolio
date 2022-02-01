import 'package:flutter/material.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/footer.dart';
import 'package:portfolio/header.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/skills.dart';

// import 'package:portfolio_x/colors.dart';
// import 'package:portfolio_x/footer.dart';
// import 'package:portfolio_x/middle.dart';
import 'package:velocity_x/velocity_x.dart';

// import 'header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        const HeaderScreen(),
        if (context.isMobile) const IntroductionWidget().p16(),
        const MiddleScreen(),
        const SkillScreen(),
        const FooterScreen(),
      ]).scrollVertical(),
    );
  }
}