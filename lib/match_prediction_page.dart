// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/teams_page.dart';
import 'package:football_app/tournament_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class MatchPredictionPage extends StatefulWidget {
  const MatchPredictionPage({super.key});

  @override
  State<MatchPredictionPage> createState() => _MatchPredictionPageState();
}

class _MatchPredictionPageState extends State<MatchPredictionPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#1B202B"),
      appBar: AppBar(
        backgroundColor: HexColor("#1B202B"),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const TournamentPage();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ));
          },
        ),
        centerTitle: true,
        title: Text(
          "FIFA world cup™",
          style: TextStyle(
            color: HexColor("#F5F5F5"),
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: "Mulish",
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.055,
                width: size.width * 0.360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      HexColor("#282F3F"),
                      HexColor("#151922"),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
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
                  child: Text(
                    "Match Schedule",
                    style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontSize: 16,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.055,
                width: size.width * 0.200,
                // color: Colors.red,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const TeamsPage(),
                              type: PageTransitionType.fade));
                    },
                    child: TweenAnimationBuilder(
                      duration: const Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) => Opacity(
                        opacity: value,
                        child: Text(
                          "teams",
                          style: TextStyle(
                              color: HexColor("#F5F5F5"),
                              fontSize: 14,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Row(
              children: [
                Container(
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 8.0),
                    builder: (context, value, child) => Transform.translate(
                      offset: Offset(0, value * -1),
                      child: Text(
                        "21 Nov,2022",
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 16,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 220,
                ),
                TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 8.0),
                    builder: (context, value, child) => Transform.translate(
                        offset: Offset(0, value * -1),
                        child: Image.asset("image/calender-01 1.png")))
              ],
            ),
          ),
          smallCard(
              size: size,
              firstimg: "image/Senegalese_Football_Federation_logo 2.png",
              firstTxt: "Senegal",
              Time: "Group A",
              propab: "AI Thumama Stadium",
              butnTxt: "1:00 PM",
              rightimg: "image/Netherlands_national_football_team_logo 2.png",
              righttxt: "Netherlands"),
          smallCard(
              size: size,
              firstimg: "image/England_national_football_team_crest.svg 2.png",
              firstTxt: "England",
              Time: "Group B",
              propab: "Khalifa international stadium",
              butnTxt: "4:00 PM",
              rightimg: "image/iran_national_football 2.png",
              righttxt: "Iran"),
          smallCard(
              size: size,
              firstimg:
                  "image/1200px-United_States_Soccer_Federation_logo_2016 4.png",
              firstTxt: "England",
              Time: "Group B",
              propab: "Ahmad Bin Ali Stadium",
              butnTxt: "10:00 PM",
              rightimg:
                  "image/1200px-Logo_Fédération_Ukraine_Football_2016 2.png",
              righttxt: "Ukraine")
        ],
      ),
    );
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
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: InkWell(
        // onTap: screen,
        child: TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: Tween(begin: 0.0, end: 1.0),
          builder: (context, value, child) => Opacity(
            opacity: value,
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
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: TweenAnimationBuilder(
                          duration: const Duration(seconds: 1),
                          tween: Tween(begin: 0.0, end: 8.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Container(
                              // color: Colors.red,
                              height: size.height * 0.100,
                              width: size.width * 0.200,
                              child: Image.asset(
                                firstimg,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: TweenAnimationBuilder(
                          duration: const Duration(seconds: 1),
                          tween: Tween(begin: 0.0, end: 8.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              firstTxt,
                              style: TextStyle(
                                  color: HexColor("#F5F5F5"),
                                  fontSize: 12,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w700),
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
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          // color: Colors.red,
                          child: TweenAnimationBuilder(
                            duration: const Duration(seconds: 1),
                            tween: Tween(begin: 0.0, end: 5.0),
                            builder: (context, value, child) =>
                                Transform.translate(
                              offset: Offset(0, value * -1),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.blueAccent,
                          padding: const EdgeInsets.only(left: 10),
                          width: 185,
                          // color: Colors.red,
                          child: TweenAnimationBuilder(
                            duration: const Duration(seconds: 1),
                            tween: Tween(begin: 0.0, end: 5.0),
                            builder: (context, value, child) =>
                                Transform.translate(
                              offset: Offset(0, value * -1),
                              child: Text(
                                propab,
                                style: TextStyle(
                                    color: HexColor("#F5F5F5"),
                                    fontSize: 12,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          child: TweenAnimationBuilder(
                            duration: const Duration(seconds: 1),
                            tween: Tween(begin: 0.0, end: 5.0),
                            builder: (context, value, child) =>
                                Transform.translate(
                              offset: Offset(0, value * -1),
                              child: Text(
                                butnTxt,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: HexColor("#F5F5F5"),
                                  fontFamily: "Mulish",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        // color: Colors.red,
                        height: size.height * 0.100,
                        width: size.width * 0.200,
                        child: TweenAnimationBuilder(
                            duration: const Duration(seconds: 1),
                            tween: Tween(begin: 0.0, end: 8.0),
                            builder: (context, value, child) =>
                                Transform.translate(
                                    offset: Offset(0, value * -1),
                                    child: Image.asset(
                                      rightimg,
                                      fit: BoxFit.contain,
                                    ))),
                      ),
                      Container(
                        child: TweenAnimationBuilder(
                          duration: const Duration(seconds: 1),
                          tween: Tween(begin: 0.0, end: 5.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                righttxt,
                                style: TextStyle(
                                    color: HexColor("#F5F5F5"),
                                    fontSize: 12,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
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
      ),
    );
  }
}
