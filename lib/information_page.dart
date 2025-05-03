// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/today_page(leaderBoard).dart';
import 'package:hexcolor/hexcolor.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#1B202B"),
      appBar: AppBar(
        backgroundColor: HexColor("#1B202B"),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: TweenAnimationBuilder(
            duration: const Duration(seconds: 1),
            tween: Tween(begin: 0.0, end: 1.0),
            builder: (context, value, child) => Opacity(
              opacity: value,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.040,
                    width: size.width * 0.080,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border:
                            Border.all(color: HexColor("#F5F5F5"), width: 2)),
                    child: Center(
                      child: Text(
                        "i",
                        style: TextStyle(color: HexColor("#F5F5F5")),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "Information",
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 18,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          txtBox(size,
              number: "1.",
              content: "Your Prediction came true, so you get 3 point."),
          txtBox(size,
              number: "2.",
              content:
                  "You Predicted a draw and it come true, so you get 3 point."),
          txtBox(size,
              number: "3.",
              content:
                  "What you Predicted is wrong but the team you think wins has won, so you get 2 point."),
          txtBox(size,
              number: "4.",
              content:
                  "You predicted a Draw which went wrong but there was a Draw between the teams, so you get 1 point."),
          txtBox(size,
              number: "5.", content: "Your Prediction was tottally wrong."),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: TweenAnimationBuilder(
              duration: const Duration(seconds: 1),
              tween: Tween(begin: 0.0, end: 5.0),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(0, value * -1),
                child: Container(
                  height: size.height * 0.050,
                  width: size.width * 0.180,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const TodayPageLeaderBoard();
                        },
                      ));
                    },
                    child: Text(
                      "ok",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget txtBox(Size size, {required String number, required String content}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 1),
        tween: Tween(begin: 0.0, end: 1.0),
        builder: (context, value, child) => Opacity(
          opacity: value,
          child: Container(
            height: size.height * 0.116,
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
            child: Padding(
              padding: const EdgeInsets.only(top: 7, left: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    // padding: EdgeInsets.only(top: 10),
                    child: Text(
                      number,
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 16,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    // padding: EdgeInsets.only(top: 10),
                    height: size.height * 0.110,
                    width: size.width * 0.780,
                    // color: Colors.red,
                    child: Text(
                      content,
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
