// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/Widget/Textstyle.dart';
import 'package:hexcolor/hexcolor.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor("#1B202B"),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
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
                        padding: const EdgeInsets.only(top: 75, left: 10),
                        child: Builder(builder: (context) {
                          return TweenAnimationBuilder(
                            duration: Duration(seconds: 2),
                            tween: Tween(begin: 0.0, end: 1.0),
                            builder: (context, value, child) => Opacity(
                              opacity: value,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: HexColor("#F5F5F5"),
                                  )),
                            ),
                          );
                        }),
                      ),
                      Positioned(
                          left: 100,
                          top: 70,
                          child: TweenAnimationBuilder(
                              duration: Duration(seconds: 2),
                              tween: Tween(begin: 0.0, end: 1.0),
                              builder: (context, value, child) => Opacity(
                                  opacity: value,
                                  child: Image.asset("image/Group 70.png")))),
                      Positioned(
                        top: 75,
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
                        top: 170,
                        left: 170,
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
                        top: 230,
                        left: 165,
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
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SmallCircle(size, data: "EY"),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Text(
                        "Eren Yeager",
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish"),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Text(
                    "Ante posuere at purus mollis velit cras eget.",
                    style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontSize: 15,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SmallCircle(size, data: "VD"),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Text(
                        "Vin Diesel",
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: size.height * 0.025,
                      width: size.width * 0.090,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          color: HexColor("#495267"),
                          borderRadius: BorderRadius.circular(35)),
                      child: Center(
                        child: Text(
                          "YOU",
                          style: TextStyle(
                              color: HexColor("#F5F5F5"),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Mulish"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 15),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Hendrerit cras sem ac.",
                    style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontSize: 15,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Row(children: [
              SmallCircle(size, data: "GG"),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Text(
                      "Gal Gadot",
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ),
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Text(
                    "Ante posuere at purus mollis",
                    style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontSize: 15,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Row(children: [
              SmallCircle(size, data: "MB"),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 10),
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Text(
                      "Mark Beckhum",
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ),
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 10),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Text(
                    "Ante posuere at purus mollis",
                    style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontSize: 15,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Text(
                    " @Vin Diesel",
                    style: TextStyle(
                        color: HexColor("#31A8FF"),
                        fontSize: 16,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Row(children: [
              SmallCircle(size, data: "SB"),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 10),
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Text(
                      "Sandra Bullock",
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ),
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 10),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Text(
                    "Ante posuere at purus mollis",
                    style: TextStyle(
                        color: HexColor("#F5F5F5"),
                        fontSize: 15,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Text(
                    " @Vin Diesel",
                    style: TextStyle(
                        color: HexColor("#31A8FF"),
                        fontSize: 16,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            TweenAnimationBuilder(
              duration: const Duration(seconds: 1),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: size.height * 0.080,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(30),
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
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        blurRadius: 5,
                        offset: const Offset(0, -3),
                        color: HexColor("#2D3545"),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: size.height * 0.050,
                          width: size.width * 0.180,
                          // color: Colors.red,
                          decoration: BoxDecoration(
                              color: HexColor("#495267"),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              "Write...",
                              style: TextStyle(
                                  color: HexColor("#F5F5F5"),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mulish"),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          height: size.height * 0.040,
                          width: size.width * 0.005,
                          color: HexColor("#495267"),
                        ),
                        iconbox(size, ImgLink: "image/image 38.png"),
                        iconbox(size, ImgLink: "image/image 40.png"),
                        iconbox(size, ImgLink: "image/image 39.png"),
                        iconbox(size, ImgLink: "image/image 37.png"),
                        iconbox(size, ImgLink: "image/image 41.png")
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget SmallCircle(Size size, {required String data}) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 1),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Container(
          margin: const EdgeInsets.only(top: 23, left: 10),
          height: size.height * 0.035,
          width: size.width * 0.060,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
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
                spreadRadius: 0,
              ),
              BoxShadow(
                blurRadius: 5,
                offset: const Offset(0, -3),
                color: HexColor("#2D3545"),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: Text(
              data,
              style: TextStyle(
                  color: HexColor("#F5F5F5"),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Mulish"),
            ),
          ),
        ),
      ),
    );
  }

  Widget iconbox(Size size, {required String ImgLink}) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 1),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Container(
          margin: const EdgeInsets.only(left: 10),
          height: size.height * 0.070,
          width: size.width * 0.130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImgLink), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
