import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/widgets/socialaccounts.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameWidget = "Sinni\nSahu."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            const PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  const FaIcon(FontAwesomeIcons.terminal, size: 50,).shimmer(primaryColor: Coolors.accentColor),
                  // const CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Coolors.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    small: const IntroductionWidget()
                        .pOnly(left: 150)
                        .h(context.percentHeight * 60),
                    medium: const IntroductionWidget()
                        .pOnly(left: 250)
                        .h(context.percentHeight * 60),
                    large: const IntroductionWidget()
                        .pOnly(left: 400)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray300.widest.sm.make(),
          10.heightBox,
          "Hola!\nI'm Sinni Sahu, a Final year student at \nIndian Institute of Information Technology, Allahabad (IIIT-A).\nI'm a Flutter Enthusiast."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        

      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}


class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      alignment: context.isMobile ? Alignment.centerRight : Alignment.center,
      child: Image.asset(
        "images/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    
    
    
    );
  }
}

