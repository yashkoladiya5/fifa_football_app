// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hexcolor/hexcolor.dart';

class GermanyPlayer extends StatefulWidget {
  const GermanyPlayer({super.key});

  @override
  State<GermanyPlayer> createState() => _GermanyPlayerState();
}

class _GermanyPlayerState extends State<GermanyPlayer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(children: [
        Container(
          height: size.height * 0.730,
          width: screenWidth,
          decoration: BoxDecoration(
            // color: Colors.red
            gradient: LinearGradient(colors: [
              HexColor("#FFFFFF").withOpacity(0),
              HexColor("#E5E5E5").withOpacity(0.5),
              HexColor("#E5E5E5").withOpacity(1)
            ]),
          ),
          child: Stack(
            children: [
              TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Container(
                    height: size.height * 0.640,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage("image/Group 66.png"),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              Positioned(
                right: 320,
                top: 120,
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 8.0),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset(0, value * -1),
                    child: Container(
                      height: size.height * 0.060,
                      width: size.width * 0.200,
                      // color: Colors.red,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/DFBEagle 2.png"))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 550),
                child: Container(
                  height: size.height * 0.090,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: HexColor("#FFFFFF"),
                          blurRadius: 50,
                          spreadRadius: 50,
                        )
                      ]),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: HexColor("#2D2D2D"),
                      )),
                ),
              ),
              Positioned(
                top: 455,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: size.height * 0.050,
                      width: size.width * 0.600,
                      // color: Colors.red
                      // ,
                      child: TweenAnimationBuilder(
                        duration: const Duration(seconds: 1),
                        tween: Tween(begin: 0.0, end: 8.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * -1),
                          child: Text(
                            "Benjamin Henrichs",
                            style: TextStyle(
                                color: HexColor("#928536"),
                                fontSize: 24,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    TweenAnimationBuilder(
                      duration: const Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 8.0),
                      builder: (context, value, child) => Transform.translate(
                        offset: Offset(0, value * -1),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.030,
                              width: size.width * 0.060,
                              // color: Colors.red,
                              child: Image.asset("image/imaage.png"),
                            ),
                            Container(
                              child: Text(
                                "Forward",
                                style: TextStyle(
                                    color: HexColor("#2D2D2D"),
                                    fontSize: 16,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 520,
                child: Row(
                  children: [
                    Agebox(size, Age: "Age", num: "23"),
                    Agebox(size, Age: "Game", num: "19"),
                    Agebox(size, Age: "Goals", num: "3")
                  ],
                ),
              ),
              Positioned(
                  top: 500,
                  left: 95,
                  child: Row(
                    children: [
                      CircleBox(size, Img: "image/Person.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 75),
                        child: CircleBox(size, Img: "image/1-01.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75),
                        child: CircleBox(size, Img: "image/1-02.png"),
                      )
                    ],
                  )),
              Positioned(
                top: 900,
                child: Container(
                  height: size.height * 0.500,
                  width: size.width * 0.970,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      gradient: LinearGradient(colors: [
                        HexColor("#928536").withOpacity(0.3),
                        HexColor("#928536"),
                        HexColor("#928536").withOpacity(0.3),
                      ])),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          height: size.height * 0.400,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.red,
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Text(
                      "Biography",
                      style: TextStyle(
                          color: HexColor("#2D2D2D"),
                          fontSize: 18,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.020,
              ),
              Container(
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset(0, value * -1),
                    child: Text(
                      "Miroslav Klose is a Poland-born German footballer who is regarded by many as one of the most effective goal poachers to have ever played the game at the highest level and holds plenty of goal scoring records that had remained unsurpassed for quite a while. Klose was born in Poland but moved with his family to Germany when he was a child and even though he had a chance to play for Poland, he chose to play for Germany.",
                      style: TextStyle(
                          color: HexColor("#2D2D2D"),
                          fontSize: 17,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }

  Widget Agebox(Size size, {required String Age, required String num}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: size.height * 0.100,
        width: size.width * 0.250,
        // color: Colors.red,
        decoration: BoxDecoration(
            border: GradientBoxBorder(
                gradient: LinearGradient(colors: [
              HexColor("#928536").withOpacity(1),
              HexColor("#FFFFFF").withOpacity(0.2)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            gradient: LinearGradient(colors: [
              HexColor("#FFFFFF").withOpacity(0.3),
              HexColor("#FFFFFF").withOpacity(0.1)
            ]),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 3),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 8.0),
                builder: (context, value, child) => Transform.translate(
                  offset: Offset(0, value * -1),
                  child: Text(
                    Age,
                    style: TextStyle(
                        color: HexColor("#2D2D2D"),
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Mulish"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 8.0),
                builder: (context, value, child) => Transform.translate(
                  offset: Offset(0, value * -1),
                  child: Text(
                    num,
                    style: TextStyle(
                        color: HexColor("#2D2D2D"),
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Mulish"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget CircleBox(Size size, {required String Img}) {
    return Container(
      height: size.height * 0.060,
      width: size.width * 0.125,
      decoration: BoxDecoration(
          // color: Colors.red,
          gradient: LinearGradient(
              colors: [
                HexColor("#FFFFFF"),
                HexColor("#B5B5B5"),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: const [0.4, 0.99]),
          borderRadius: BorderRadius.circular(60),
          boxShadow: [
            BoxShadow(
                color: HexColor("#A4A4A4").withOpacity(0.7),
                blurRadius: 5,
                offset: const Offset(4, 4)),
            BoxShadow(
                color: HexColor("#FFFFFF").withOpacity(0.2),
                blurRadius: 15,
                offset: const Offset(-5, -5))
          ]),
      child: Center(
          child: TweenAnimationBuilder(
              duration: const Duration(seconds: 1),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) =>
                  Opacity(opacity: value, child: Image.asset(Img)))),
    );
  }
}
