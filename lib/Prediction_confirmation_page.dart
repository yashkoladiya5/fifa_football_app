// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, unnecessary_const, unnecessary_import, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/Widget/Textstyle.dart';
import 'package:football_app/prediction_complete_page.dart';
import 'package:football_app/prediction_done_page.dart';
import 'package:football_app/prediction_page.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class PredictionConfirmationPage extends StatefulWidget {
  const PredictionConfirmationPage({super.key});

  @override
  State<PredictionConfirmationPage> createState() =>
      _PredictionConfirmationPageState();
}

class _PredictionConfirmationPageState
    extends State<PredictionConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: HexColor("#1B202B"),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TweenAnimationBuilder(
              duration: Duration(seconds: 2),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Container(
                  height: height * 0.340,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("image/image 5.png"),
                        fit: BoxFit.fill,
                        opacity: 0.2),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 65, left: 10),
                        child: Builder(builder: (context) {
                          return TweenAnimationBuilder(
                            duration: Duration(seconds: 2),
                            tween: Tween(begin: 0.0, end: 1.0),
                            builder: (context, value, child) => Opacity(
                              opacity: value,
                              child: IconButton(
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    color: HexColor("#F5F5F5"),
                                  )),
                            ),
                          );
                        }),
                      ),
                      Positioned(
                          left: 100,
                          top: 60,
                          child: TweenAnimationBuilder(
                              duration: Duration(seconds: 2),
                              tween: Tween(begin: 0.0, end: 1.0),
                              builder: (context, value, child) => Opacity(
                                  opacity: value,
                                  child: Image.asset("image/Group 70.png")))),
                      Positioned(
                        top: 65,
                        left: 330,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) => Opacity(
                            opacity: value,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: HexColor("#F5F5F5"),
                                )),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 145,
                        right: 255,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 1),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(3, value * -1),
                            child: Container(
                              height: 110,
                              width: 150,
                              // color: Colors.red,
                              decoration: const BoxDecoration(
                                  // color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "image/Senegalese_Football_Federation_logo 2.png"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 265,
                        left: 35,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              "Senegal",
                              style: MyTextStyle(myfontsize: 14),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 160,
                        left: 140,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              "21 Nov,2022 1:00 PM",
                              style: MyTextStyle(myfontsize: 12),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 160,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              "1 : 1",
                              style: MyTextStyle(myfontsize: 40),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 240,
                        left: 155,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Container(
                              height: 25,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: HexColor("#22AB00"),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  "1k Prediction",
                                  style: MyTextStyle(myfontsize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 270, top: 140),
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Container(
                              height: 110,
                              width: 150,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "image/Netherlands_national_football_team_logo 2.png"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 260,
                        left: 290,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              "Netharlands",
                              style: MyTextStyle(myfontsize: 14),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 280,
                        left: 130,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Container(
                              // margin: EdgeInsets.only(botto: 20),
                              padding: const EdgeInsets.only(bottom: 5),
                              height: height * 0.050,
                              width: height * .170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      HexColor("#282F3F"),
                                      HexColor("#151922")
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 9,
                                    offset: const Offset(0, 4),
                                    color: HexColor("#000000"),
                                    // spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: const Offset(0, -3),
                                    color: HexColor("#2D3545"),
                                    // spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child:
                                              const PredictionCompletedPage(),
                                          type: PageTransitionType.fade));
                                },
                                child: Center(
                                  child: Text(
                                    "Done",
                                    style: MyTextStyle(myfontsize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 10.0),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset(3, value * -1),
                    child: Text(
                      "Upcoming Match",
                      style: MyTextStyle(myfontsize: 16),
                    ),
                  ),
                ),
              ),
            ),
            smallCard(
                size: size,
                firstimg:
                    "image/1200px-United_States_Soccer_Federation_logo_2016 4.png",
                firstTxt: "USA",
                Time: "21 Nov,2022 1:00 PM",
                propab: "0 : 0",
                butnTxt: "Prediction",
                rightimg:
                    "image/1200px-Logo_Fédération_Ukraine_Football_2016 2.png",
                righttxt: "Ukraine"),
            smallCard(
                size: size,
                firstimg:
                    "image/England_national_football_team_crest.svg 2.png",
                firstTxt: "England",
                Time: "21 Nov,2022 1:00 PM",
                propab: "0 : 0",
                butnTxt: "Prediction",
                rightimg: "image/iran_national_football 2.png",
                righttxt: "Iran"),
          ],
        ),
      ),
    ));
  }

  Widget smallCard({
    required Size size,
    required String firstimg,
    required String firstTxt,
    required String Time,
    required String propab,
    required String butnTxt,
    required String rightimg,
    required String righttxt,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15, left: 20, right: 20),
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: Tween(begin: 0.0, end: 1.0),
        builder: (context, value, child) => Opacity(
          opacity: value,
          child: Container(
            height: size.height * 0.150,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                    colors: [
                      HexColor("#282F3F"),
                      HexColor("#151922"),
                    ]),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 9,
                    offset: const Offset(0, 4),
                    color: HexColor("#000000"),
                    // spreadRadius: 0,
                  ),
                  BoxShadow(
                    blurRadius: 5,
                    offset: const Offset(0, -3),
                    color: HexColor("#2D3545"),
                    // spreadRadius: 0,
                  )
                ]),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: TweenAnimationBuilder(
                        duration: Duration(seconds: 2),
                        tween: Tween(begin: 0.0, end: 10.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * -1),
                          child: Container(
                            height: size.height * 0.090,
                            width: size.width * 0.180,
                            child: Image.asset(
                              firstimg,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              firstTxt,
                              style: MyTextStyle(myfontsize: 12),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 15),
                      child: Container(
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              Time,
                              style: MyTextStyle(myfontsize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 5),
                      child: Container(
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              propab,
                              style: MyTextStyle(myfontsize: 24),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 5),
                      child: TweenAnimationBuilder(
                        duration: Duration(seconds: 2),
                        tween: Tween(begin: 0.0, end: 10.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * -1),
                          child: Container(
                            height: size.height * 0.030,
                            width: size.width * 0.175,
                            decoration: BoxDecoration(
                                color: HexColor("#22AB00"),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                butnTxt,
                                style: MyTextStyle(myfontsize: 12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 35),
                      child: Container(
                        height: size.height * 0.090,
                        width: size.width * 0.180,
                        child: TweenAnimationBuilder(
                            duration: Duration(seconds: 2),
                            tween: Tween(begin: 0.0, end: 10.0),
                            builder: (context, value, child) =>
                                Transform.translate(
                                    offset: Offset(0, value * -1),
                                    child: Image.asset(
                                      rightimg,
                                      fit: BoxFit.contain,
                                    ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 10),
                      child: Container(
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              righttxt,
                              style: MyTextStyle(myfontsize: 12),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
