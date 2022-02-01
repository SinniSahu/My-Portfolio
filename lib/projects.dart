import 'package:flutter/material.dart';
import 'package:portfolio/coolors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:hovering/hovering.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["My Projects.".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                GestureDetector(
                  child: const ProjectWidget(title: "Incenzo"),
                  onTap: (){
                    launch("https://github.com/zorione/SheHacks_Team-027");
                  },
                  ),
                const ProjectWidget(title: "Recipe App").onTap(() => launch("https://github.com/Xurde-Sni/Meals_Recipe")),
                const ProjectWidget(title: "Personal Expenses").onTap(() => launch("https://github.com/Xurde-Sni/Personal_Expenses")),
                const ProjectWidget(title: "Tic-Tac-Toe\nSocket Programing").onTap(() => launch("https://github.com/Xurde-Sni/Tic-Tac-Toe-Socket-Programing")),
                // ProjectWidget(title: "Payoye"),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
        
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String? title;

  const ProjectWidget({Key? key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return HoverAnimatedContainer(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
          color: Colors.black54,
            offset: Offset(5.0,5.0,),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
        color: Vx.purple700, 
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        ),
      hoverDecoration: BoxDecoration(
        // border: Border.all(color: Colors.black, style: BorderStyle.solid, width: 2),
        color: Coolors.secondaryColor,
        borderRadius: BorderRadius.circular(20)
      ),

      child: title!.text.bold.white.xl.wide.center
          .make()
          // .box
          // .p8
          // .roundedLg
          // .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
          // .alignCenter
          // .square(200)
          // .make()
          // .p16(),
    ).p16();
  }
}