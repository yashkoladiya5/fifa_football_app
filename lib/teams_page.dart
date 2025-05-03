// ignore_for_file: avoid_unnecessary_containers, unnecessary_import, non_constant_identifier_names, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'germany_team.dart';
import 'match_prediction_page.dart';
// import 'package:football_app/team_Box.dart';
import 'package:football_app/tournament_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({super.key});

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
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
        title: TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: Tween(begin: 0.0, end: 1.0),
          builder: (context, value, child) => Opacity(
            opacity: value,
            child: Text(
              "FIFA world cup™",
              style: TextStyle(
                color: HexColor("#F5F5F5"),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: "Mulish",
              ),
            ),
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
                width: size.width * 0.340,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const MatchPredictionPage(),
                              type: PageTransitionType.fade));
                    },
                    child: TweenAnimationBuilder(
                      duration: const Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) => Opacity(
                        opacity: value,
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
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  height: size.height * 0.055,
                  width: size.width * 0.190,
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
                      "teams",
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 14,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              teamBox(size,
                  colour: "#E42518",
                  text: "Portugal",
                  image: "image/Portuguese_Football_Federation 2.png",
                  Pagelink: () {}),
              teamBox(size,
                  colour: "#11A335",
                  text: "Senegal",
                  image: "image/Senegalese_Football_Federation_logo 2.png",
                  Pagelink: () {})
            ],
          ),
          Row(
            children: [
              teamBox(size,
                  colour: "#C1B678",
                  text: "Germany",
                  image: "image/DFBEagle 1.png", Pagelink: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const GermanyTeam(),
                        type: PageTransitionType.bottomToTop));
              }),
              teamBox(size,
                  colour: "#2B57AC",
                  text: "England",
                  image: "image/England_national_football_team_crest.svg 2.png",
                  Pagelink: () {})
            ],
          ),
          Row(
            children: [
              teamBox(size,
                  colour: "#BB2533",
                  text: "USA",
                  image:
                      "image/1200px-United_States_Soccer_Federation_logo_2016 4.png",
                  Pagelink: () {}),
              teamBox(size,
                  colour: "#CAD4D7",
                  text: "France",
                  image: "image/France_national_football_team_seal 1.png",
                  Pagelink: () {}),
            ],
          ),
          Row(
            children: [
              teamBox(size,
                  colour: "#D5B048",
                  text: "Argentina",
                  image:
                      "image/Argentina_national_football_team_logo 1 - Copy.png",
                  Pagelink: () {}),
              teamBox(size,
                  colour: "#CD181E",
                  text: "Denmark",
                  image: "image/Dansk_boldspil_union_logo 1.png",
                  Pagelink: () {})
            ],
          ),
          Row(
            children: [
              teamBox(size,
                  colour: "#7E1331",
                  text: "Qatar",
                  image: "image/Qatar_Football_Association_logo 1.png",
                  Pagelink: () {}),
              teamBox(size,
                  colour: "#0C87D1",
                  text: "Brazil",
                  image: "image/Brazilian_Football_Confederation_logo 1.png",
                  Pagelink: () {})
            ],
          )
        ],
      ),
    );
  }

  Widget teamBox(Size size,
      {required String colour,
      required String text,
      required String image,
      required VoidCallback Pagelink}) {
    return Stack(
      children: [
        TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: Tween(begin: 0.0, end: 1.0),
          builder: (context, value, child) => Opacity(
            opacity: value,
            child: Container(
              height: size.height * 0.140,
              width: size.width * 0.455,
              // color: Colors.red,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Container(
                      height: size.height * 0.090,
                      width: size.width * 0.050,
                      decoration: BoxDecoration(
                          color: HexColor(colour).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: InkWell(
              onTap: Pagelink,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 25),
                child: Container(
                  height: size.height * 0.140,
                  width: size.width * 0.455,
                  // color: Colors.yellow.withOpacity(0.5),
                  decoration: BoxDecoration(

                      // color: Colors.red.withOpacity(0.0),
                      gradient: LinearGradient(
                    colors: [
                      HexColor("#E42518").withOpacity(0.05),
                      HexColor("#F5F5F5").withOpacity(0.01)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    // stops: [0.1,0.99]
                  )),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 10),
                        child: Container(
                          height: size.height * 0.050,
                          width: size.width * 0.170,
                          // color: Colors.blue,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: TweenAnimationBuilder(
                              duration: const Duration(seconds: 1),
                              tween: Tween(begin: 0.0, end: 5.0),
                              builder: (context, value, child) =>
                                  Transform.translate(
                                offset: Offset(0, value * -1),
                                child: Text(
                                  text,
                                  style: TextStyle(
                                    color: HexColor("#F5F5F5"),
                                    fontSize: 14,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, top: 5),
                        child: Container(
                          height: size.height * 0.110,
                          width: size.width * 0.250,
                          // color: Colors.pink,
                          child: TweenAnimationBuilder(
                              duration: const Duration(seconds: 1),
                              tween: Tween(begin: 0.0, end: 1.0),
                              builder: (context, value, child) => Opacity(
                                  opacity: value, child: Image.asset(image))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
