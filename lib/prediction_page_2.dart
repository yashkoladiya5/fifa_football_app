// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, unnecessary_const, unnecessary_import, prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/Prediction_confirmation_page.dart';
import 'package:football_app/Widget/Textstyle.dart';
import 'package:football_app/alert_dialog_page.dart';

import 'package:football_app/prediction_confirm_page.dart';
import 'package:football_app/prediction_page.dart';
// import 'package:football_app/prediction_done_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class PredictionPage2 extends StatefulWidget {
  const PredictionPage2({super.key});

  @override
  State<PredictionPage2> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
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
                  height: height * 0.350,
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
                        left: 320,
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
                        top: 135,
                        right: 250,
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
                                          "image/Senegalese_Football_Federation_logo 2.png"))),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 250,
                        left: 40,
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
                        top: 150,
                        left: 130,
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
                        top: 165,
                        left: 150,
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
                        top: 225,
                        left: 145,
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
                        padding: const EdgeInsets.only(left: 260, top: 65),
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "image/Netherlands_national_football_team_logo 2.png"))),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 245,
                        left: 285,
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
                        top: 285,
                        left: 120,
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 10.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Container(
                              // margin: EdgeInsets.only(botto: 20),
                              padding: const EdgeInsets.only(bottom: 5),
                              height: size.height * 0.050,
                              width: size.height * .170,
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
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialogpage();
                                    },
                                  );
                                },
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Uufff!!",
                                        style: TextStyle(
                                            color: HexColor("#F5F5F5"),
                                            fontSize: 14,
                                            fontFamily: "Mulish",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child:
                                            Image.asset("image/image 22.png"),
                                      )
                                    ],
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
                icon: "image/image 14.png",
                size: size,
                predicitontext: "Prediction 1 : 4",
                firstimg:
                    "image/England_national_football_team_crest.svg 2.png",
                firstTxt: "England",
                Time: "21 Nov,2022 1:00 PM",
                propab: "0 : 0",
                butnTxt: "Woohoo!! ",
                rightimg: "image/iran_national_football 2.png",
                righttxt: "Iran"),
            smallCard(
                icon: "image/image 12.png",
                predicitontext: "Prediction 1 : 4",
                size: size,
                firstimg:
                    "image/England_national_football_team_crest.svg 2.png",
                firstTxt: "England",
                Time: "21 Nov,2022 1:00 PM",
                propab: "0 : 0",
                butnTxt: "Oops!! ",
                rightimg: "image/iran_national_football 2.png",
                righttxt: "Iran"),
          ],
        ),
      ),
    ));
  }

  Widget smallCard(
      {required Size size,
      required String icon,
      required String firstimg,
      required String firstTxt,
      required String Time,
      required String propab,
      required String butnTxt,
      required String rightimg,
      required String predicitontext,
      required String righttxt}) {
    return Column(
      children: [
        Stack(clipBehavior: Clip.none, children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween: Tween(begin: 0.0, end: 8.0),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(0, value * -1),
                child: Container(
                  height: size.height * 0.160,
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
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: size.height * 0.080,
                              width: size.width * 0.160,
                              child: Image.asset(firstimg),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Container(
                              child: Text(
                                firstTxt,
                                style: TextStyle(
                                    color: HexColor("#F5F5F5"),
                                    fontSize: 12,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Container(
                              child: Text(
                                Time,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: HexColor("#F5F5F5"),
                                  fontFamily: "Mulish",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 45,
                            ),
                            child: Container(
                              child: Text(
                                propab,
                                style: TextStyle(
                                    color: HexColor("#F5F5F5"),
                                    fontSize: 24,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45),
                            child: Container(
                              child: Text(
                                predicitontext,
                                style: TextStyle(
                                    color: HexColor("#F5F5F5"),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Mulish"),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 10),
                            child: Container(
                              height: size.height * 0.100,
                              width: size.width * 0.200,
                              child: Image.asset(rightimg),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 45, bottom: 10),
                            child: Container(
                              child: Text(
                                righttxt,
                                style: TextStyle(
                                    color: HexColor("#F5F5F5"),
                                    fontSize: 12,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
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
          ),
          Positioned(
              bottom: -5,
              left: 125,
              child: InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {

                  // },));
                },
                child: TweenAnimationBuilder(
                  duration: Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 8.0),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset(0, value * -1),
                    child: Container(
                      // margin: EdgeInsets.only(botto: 20),
                      padding: const EdgeInsets.only(bottom: 5),
                      height: size.height * 0.040,
                      width: size.height * .155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [HexColor("#282F3F"), HexColor("#151922")],
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
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              butnTxt,
                              style: TextStyle(
                                  color: HexColor("#F5F5F5"),
                                  fontSize: 14,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w700),
                            ),
                            Image.asset(icon),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ])
      ],
    );
  }
}
