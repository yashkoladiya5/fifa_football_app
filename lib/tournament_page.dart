// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:football_app/Sign_In_Page.dart';
import 'live_page.dart';
import 'main_page.dart';
import 'match_prediction_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class TournamentPage extends StatefulWidget {
  const TournamentPage({super.key});

  @override
  State<TournamentPage> createState() => _TournamentPageState();
}

class _TournamentPageState extends State<TournamentPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: HexColor("#1B202B"),
        appBar: AppBar(
          backgroundColor: HexColor("#1B202B"),
          centerTitle: true,
          leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const MainPage();
                      },
                    ));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ));
            },
          ),
          title: Text(
            "Tournaments",
            style: TextStyle(
                color: HexColor("#F5F5F5"),
                fontWeight: FontWeight.w700,
                fontFamily: "Mulish",
                fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10, right: 10),
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
                    child: Container(
                      height: size.height * 0.075,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
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
                        gradient: LinearGradient(
                          colors: [
                            HexColor("#282F3F"),
                            HexColor("#151922"),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Text(
                                "FIFA world cup™",
                                style: TextStyle(
                                  color: HexColor("#F5F5F5"),
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.500,
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: HexColor("#F5F5F5"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            menuitem(text: "FIFA U-20 world cup™"),
            menuitem(text: "FIFA U-17 world cup™"),
            menuitem(text: "FIFA Arab cup™"),
            menuitem(text: "FIFA Beach soccer world cup™"),
            menuitem(text: "FIFA Futsal world cup™"),
            menuitem(text: "FIFA Futsal world cup™"),
            menuitem(text: "Olymic Football Tournament"),
            menuitem(text: "Youth olympic football tournament")
          ],
        ));
  }

  Widget menuitem({required String text, VoidCallback? pageLink}) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 25),
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 1),
        tween: Tween(begin: 0.0, end: 8.0),
        builder: (context, value, child) => Transform.translate(
          offset: Offset(0, value * -1),
          child: Container(
            child: Row(
              children: [
                Container(
                  width: 250,
                  // color: Colors.red,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Mulish",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 75,
                ),
                Container(
                  child: InkWell(
                      onTap: pageLink,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor("#F5F5F5"),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
