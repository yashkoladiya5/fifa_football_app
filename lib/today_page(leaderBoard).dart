// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:football_app/general_page(leaderBoard).dart';
import 'package:football_app/information_page.dart';
import 'package:football_app/to_leaderboard_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class TodayPageLeaderBoard extends StatefulWidget {
  const TodayPageLeaderBoard({super.key});

  @override
  State<TodayPageLeaderBoard> createState() => _TodayPageLeaderBoardState();
}

class _TodayPageLeaderBoardState extends State<TodayPageLeaderBoard> {
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
                      return ToLeaderBoardPage();
                    },
                  ));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: HexColor("#F5F5F5"),
                ));
          },
        ),
        title: TweenAnimationBuilder(
          duration: Duration(seconds: 1),
          tween: Tween(begin: 0.0, end: 1.0),
          builder: (context, value, child) => Opacity(
            opacity: value,
            child: Text(
              "Leaderboard",
              style: TextStyle(
                color: HexColor("#F5F5F5"),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: "Mulish",
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Container(
                  height: size.height * 0.035,
                  width: size.width * 0.075,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: HexColor("#F5F5F5"), width: 2)),
                  child: Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: InformationPage(),
                                type: PageTransitionType.topToBottom));
                      },
                      child: Text(
                        "i",
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Icon(
                  Icons.share,
                  color: HexColor("#F5F5F5"),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.055,
                width: size.width * 0.220,
                // color: Colors.red,
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
                    "Today's",
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Mulish",
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Container(
                // color: Colors.red,
                height: size.height * 0.055,
                width: size.width * 0.200,
                child: Center(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: GenerealPageLeaderBoard(),
                              type: PageTransitionType.fade));
                    },
                    child: TweenAnimationBuilder(
                      duration: Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) => Opacity(
                        opacity: value,
                        child: Text(
                          "General",
                          style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: size.height * 0.120,
                width: size.width * 0.390,
                // color: Colors.red,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 1),
                          tween: Tween(begin: 0.0, end: 5.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              "No.",
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
                      Container(
                        child: TweenAnimationBuilder(
                          duration: Duration(seconds: 1),
                          tween: Tween(begin: 0.0, end: 5.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(0, value * -1),
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color: HexColor("#F5F5F5"),
                                  fontSize: 18,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.095,
                width: size.width * 0.205,
                // color: Colors.blue,
                child: TweenAnimationBuilder(
                  duration: Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 5.0),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset(0, value * -1),
                    child: Container(
                      // height: size.height * 0.100,
                      // width: size.width * 0.100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                        // borderRadius: BorderRadius.circular(15),
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
                        child: Image.asset(
                            "image/apple-unveils-new-emoji-face-mask-memoji-characters-hypebeast-apple-memoji-head-clothing-apparel-toy-transparent-png-2663192_ccexpress 1.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.120,
                width: size.width * 0.390,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TweenAnimationBuilder(
                      duration: Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 5.0),
                      builder: (context, value, child) => Transform.translate(
                        offset: Offset(0, value * -1),
                        child: Container(
                          child: Text(
                            "Points",
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
                    Container(
                      child: TweenAnimationBuilder(
                        duration: Duration(seconds: 1),
                        tween: Tween(begin: 0.0, end: 5.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * -1),
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: HexColor("#F5F5F5"),
                                fontSize: 18,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Box(size,
              Firsttxt: "1.",
              imglink: "image/35939_ccexpress 1.png",
              Name: "Gal Gadot",
              number: "5"),
          Box(size,
              Firsttxt: "2.",
              imglink: "image/8475-middle-removebg-preview 1.png",
              Name: "Tom Cruise",
              number: "4"),
          Box(size,
              Firsttxt: "3.",
              imglink:
                  "image/apple-unveils-new-emoji-face-mask-memoji-characters-hypebeast-apple-memoji-head-clothing-apparel-toy-transparent-png-2663192_ccexpress 1.png",
              Name: "Vin Diesel",
              number: "3"),
          Box(size,
              Firsttxt: "4.",
              imglink: "image/35962-removebg-preview 1.png",
              Name: "Angelina jolie",
              number: "2"),
          Box(size,
              Firsttxt: "5.",
              imglink: "image/profile-removebg-preview 1.png",
              Name: "Chris Pratt",
              number: "1"),
          Box(size,
              Firsttxt: "6.",
              imglink: "image/35932-removebg-preview 1.png",
              Name: "Sandra Bullock",
              number: "1")
        ],
      ),
    );
  }

  Widget Box(Size size,
      {required String Firsttxt,
      required String imglink,
      required String Name,
      required String number}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 20, top: 20),
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 1),
        tween: Tween(begin: 0.0, end: 5.0),
        builder: (context, value, child) => Transform.translate(
          offset: Offset(0, value * -1),
          child: Container(
            height: size.height * 0.074,
            width: double.infinity,
            // color: Colors.red,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: TweenAnimationBuilder(
                    duration: Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Text(
                        Firsttxt,
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                TweenAnimationBuilder(
                  duration: Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Container(
                      height: size.height * 0.070,
                      width: size.width * 0.110,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imglink), fit: BoxFit.cover)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: size.width * 0.320,
                  // color: Colors.red,
                  child: TweenAnimationBuilder(
                    duration: Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Text(
                        Name,
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Container(
                  child: TweenAnimationBuilder(
                    duration: Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Text(
                        number,
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 16,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
