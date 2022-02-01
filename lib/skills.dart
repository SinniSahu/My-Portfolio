import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:hovering/hovering.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        children: [
          "Skills".richText.xl4.white.make().shimmer().centered().p8(),
          30.widthBox,

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                SkillItem(
                  title: "C++", 
                  imageUrl: "https://cdn-icons-png.flaticon.com/512/6132/6132222.png", 
                  percent: "90.0%",
                  pernum: 0.9,),
                30.widthBox,
                SkillItem(
                  title: "Java", 
                  imageUrl: "https://img.icons8.com/ios/344/java-coffee-cup-logo--v1.png", 
                  percent: "75.0%",
                  pernum: 0.75,),
                30.widthBox,
                SkillItem(
                  title: "Flutter", 
                  imageUrl: "https://img.icons8.com/color/344/flutter.png", 
                  percent: "85.0%",
                  pernum: 0.85,),
                30.widthBox,
                SkillItem(
                  title: "Dart", 
                  imageUrl: "https://img.icons8.com/color/452/dart.png", 
                  percent: "80.0%",
                  pernum: 0.8,),
                30.widthBox,
                SkillItem(
                  title: "Html", 
                  imageUrl: "https://img.icons8.com/color/344/html-5--v1.png", 
                  percent: "60.0%",
                  pernum: 0.6,),
                  30.widthBox,
                SkillItem(
                  title: "Matlab", 
                  imageUrl: "https://img.icons8.com/fluency/344/matlab.png", 
                  percent: "40.0%",
                  pernum: 0.40,),
                
                // images from: https://icons8.com/icons/
                       
              ]),
            ),

        ],
      ).p16(),
    ).p20.make();

    
  }
}

class SkillItem extends StatelessWidget {

  final String imageUrl;
  final String percent;
  final String title;
  final double pernum;

  SkillItem({
    required this.title,
    required this.imageUrl,
    required this.percent,
    required this.pernum,
  });

  @override
  Widget build(BuildContext context) {
    return HoverCrossFadeWidget(
      duration: const Duration(milliseconds: 300),
      firstChild: VxBox(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            // "https://cdn-icons-png.flaticon.com/512/2452/2452499.png",
            height: 50,
            width: 50,
            fit: BoxFit.contain,
          ),
          10.heightBox,
           Text(title)
              .text
              .size(10)
              .purple900
              .bold
              .makeCentered()
        ],
      )).white.height(150).width(150).roundedFull.makeCentered(),
      secondChild: VxBox(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 74.0,
            lineWidth: 10.0,
            animation: true,
            percent: pernum, // 0.9,
            center:  Text(
              percent,
              // "90.0%",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                  fontSize: 30.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.deepPurple,
          ),
        ],
      )).white.height(150).width(150).roundedFull.makeCentered(),
    );
  }
}
