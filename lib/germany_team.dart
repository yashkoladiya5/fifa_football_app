// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'germany_player.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class GermanyTeam extends StatefulWidget {
  const GermanyTeam({super.key});

  @override
  State<GermanyTeam> createState() => _GermanyTeamState();
}

class _GermanyTeamState extends State<GermanyTeam> {
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
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: HexColor("#F5F5F5"),
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
              "Germany",
              style: TextStyle(
                  color: HexColor("#F5F5F5"),
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: size.height * 0.355,
                width: size.width * 0.950,
                // color: Colors.red,

                child: FittedBox(
                    fit: BoxFit.cover,
                    child: TweenAnimationBuilder(
                      duration: const Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) => Opacity(
                        opacity: value,
                        child: Image.asset(
                          "image/image 21.png",
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 5.0),
                builder: (context, value, child) => Transform.translate(
                  offset: Offset(0, value * -1),
                  child: Text(
                    "The Germany national football team\nrepresents Germany in men's international\nfootball and played its first match in 1908.\nThe team is governed by the German Foot-\nball Association,founded in 1900.",
                    style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontSize: 16,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Container(
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 5.0),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset(0, value * -1),
                    child: Text(
                      "Players",
                      style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            PlayerBox(size,
                PlayerName: "Antoh Stach",
                PlayerPhoto: "image/antohstach 1.png", playerLink: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const GermanyPlayer(),
                      type: PageTransitionType.topToBottom));
            }),
            PlayerBox(size,
                PlayerName: "Antonio Rudiger",
                PlayerPhoto: "image/Group 73.png",
                playerLink: () {}),
            PlayerBox(size,
                PlayerName: "Benjamin Henrichs",
                PlayerPhoto: "image/Group 74.png",
                playerLink: () {}),
            PlayerBox(size,
                PlayerName: "Christian Gunter",
                PlayerPhoto: "image/Group 75.png",
                playerLink: () {}),
          ],
        ),
      ),
    );
  }

  Widget PlayerBox(Size size,
      {required String PlayerName,
      required String PlayerPhoto,
      required VoidCallback playerLink}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: InkWell(
              onTap: playerLink,
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Container(
                    height: size.height * 0.065,
                    width: size.width * 0.780,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
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
                    child: Center(
                      child: TweenAnimationBuilder(
                        duration: const Duration(seconds: 1),
                        tween: Tween(begin: 0.0, end: 5.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * -1),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              PlayerName,
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
                ),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 1,
            left: 50,
            // top: 5,
            child: Container(
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Image.asset(
                    PlayerPhoto,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
