// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:football_app/information_page.dart';
import 'package:football_app/to_leaderboard_page.dart';
import 'package:football_app/today_page(leaderBoard).dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class GenerealPageLeaderBoard extends StatefulWidget {
  const GenerealPageLeaderBoard({super.key});

  @override
  State<GenerealPageLeaderBoard> createState() =>
      _GenerealPageLeaderBoardState();
}

class _GenerealPageLeaderBoardState extends State<GenerealPageLeaderBoard> {
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
                      return const ToLeaderBoardPage();
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
          duration: const Duration(seconds: 1),
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
              duration: const Duration(seconds: 1),
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
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const InformationPage(),
                                type: PageTransitionType.topToBottom));
                      },
                      child: Text(
                        "i",
                        style: TextStyle(color: HexColor("#F5F5F5")),
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
              duration: const Duration(seconds: 1),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Container(
                  child: Icon(
                    Icons.share,
                    color: HexColor("#F5F5F5"),
                  ),
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

                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const TodayPageLeaderBoard(),
                              type: PageTransitionType.fade));
                    },
                    child: TweenAnimationBuilder(
                      duration: const Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) => Opacity(
                        opacity: value,
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
                    "General",
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Mulish",
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
                          duration: const Duration(seconds: 1),
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
                          duration: const Duration(seconds: 1),
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
              TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 5.0),
                builder: (context, value, child) => Transform.translate(
                  offset: Offset(0, value * -1),
                  child: Container(
                    height: size.height * 0.095,
                    width: size.width * 0.205,
                    // color: Colors.blue,
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
                    Container(
                      child: TweenAnimationBuilder(
                        duration: const Duration(seconds: 1),
                        tween: Tween(begin: 0.0, end: 5.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * -1),
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
                        duration: const Duration(seconds: 1),
                        tween: Tween(begin: 0.0, end: 5.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * -1),
                          child: Text(
                            "100",
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
          const SizedBox(
            height: 20,
          ),
          Box(size,
              Firsttxt: "1.",
              imglink: "image/35939_ccexpress 1.png",
              Name: "Gal Gadot",
              number: "300"),
          Box(size,
              Firsttxt: "2.",
              imglink: "image/8475-middle-removebg-preview 1.png",
              Name: "Tom Cruise",
              number: "200"),
          Box(size,
              Firsttxt: "3.",
              imglink:
                  "image/apple-unveils-new-emoji-face-mask-memoji-characters-hypebeast-apple-memoji-head-clothing-apparel-toy-transparent-png-2663192_ccexpress 1.png",
              Name: "Vin Diesel",
              number: "100"),
          Box(size,
              Firsttxt: "4.",
              imglink: "image/35962-removebg-preview 1.png",
              Name: "Angelina jolie",
              number: "100"),
          Box(size,
              Firsttxt: "5.",
              imglink: "image/profile-removebg-preview 1.png",
              Name: "Chris Pratt",
              number: "100"),
          Box(size,
              Firsttxt: "6.",
              imglink: "image/35932-removebg-preview 1.png",
              Name: "Sandra Bullock",
              number: "100")
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
        duration: const Duration(seconds: 1),
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
                  padding: const EdgeInsets.only(left: 15),
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => TweenAnimationBuilder(
                      duration: const Duration(seconds: 1),
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
                ),
                const SizedBox(
                  width: 7,
                ),
                TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
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
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: size.width * 0.320,
                  // color: Colors.red,
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
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
                const SizedBox(
                  width: 70,
                ),
                Container(
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
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
