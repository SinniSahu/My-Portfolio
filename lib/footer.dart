import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/widgets/socialaccounts.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _details = VxBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.place,
                  color: Colors.deepPurpleAccent,
                  size: 20,
                ),
                const Text(" : Jhansi, U.P. , India").text.white.make()
              ],
            ).p16(),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  color: Colors.deepPurpleAccent,
                  size: 20,
                ),
                const Text(" : 94xxxxxx05").text.white.make()
              ],
            ).p16(),
            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.deepPurpleAccent,
                  size: 20,
                ),
                const Text(" : sinnisahu03@gmail.com").text.white.make()
              ],
            ).p16(),
          ],
        ).centered()
        ).color(Coolors.secondaryColor).width(250).roundedLg.make();

    return Container(
      padding: const EdgeInsets.all(10),
      color: Vx.purple700,
      child: VxDevice(
        mobile: VStack([
          [
        "Thanks for scrolling ".richText.bold.white.xl2.make(),
        // const Icon(
        //     AntDesign.heart,
        //     color: Vx.white,
        //     size: 20,
        //   ),
          const FaIcon(FontAwesomeIcons.heart,color: Vx.white,).p4(),
        ].hStack(),
        10.heightBox,
        const SocialAccounts(),
        20.heightBox,
        _details,

        ]).centered(), 


        web: HStack([
        [
          ["Thanks for scrolling ".richText.bold.white.xl2.make(),
        // const Icon(
        //     AntDesign.heart,
        //     color: Vx.white,
        //     size: 20,
        //   ),
          const FaIcon(FontAwesomeIcons.heart,color: Vx.white,).p4(),
        ].hStack(),
        10.heightBox,
        const SocialAccounts(),
        ].vStack(),

        70.widthBox,
        _details,

        ]).centered(),
        )
      
    ).w(context.screenWidth);
  }
}
