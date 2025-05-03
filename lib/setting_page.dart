// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'about_us_page.dart';
import 'change_passs_page.dart';
import 'contact_us_page.dart';
import 'help_page.dart';
import 'package:football_app/privacy_policy_page.dart';
import 'package:football_app/report_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
              "Setting",
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
            height: 30,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.095,
                  width: size.width * 0.205,
                  // color: Colors.blue,
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
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
                  padding: const EdgeInsets.only(top: 10),
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 5.0),
                    builder: (context, value, child) => Transform.translate(
                      offset: Offset(0, value * -1),
                      child: Text(
                        "Fifa",
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish"),
                      ),
                    ),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(top: 5),
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween(begin: 0.0, end: 5.0),
                    builder: (context, value, child) => Transform.translate(
                      offset: Offset(0, value * -1),
                      child: Text(
                        "fifa_2022@gmail.com",
                        style: TextStyle(
                            color: HexColor("#C4C4C4"),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const ChangePassPage(),
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
                              "Change Password",
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
                          width: size.width * 0.480,
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
            height: 5,
          ),
          settingItem(
            size,
            txt: "Privacy & Policy",
            link: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const PrivacyPolicyPage(),
                      type: PageTransitionType.topToBottom));
            },
          ),
          settingItem(
            size,
            txt: "About us",
            link: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const AboutUsPage(),
                      type: PageTransitionType.topToBottom));
            },
          ),
          settingItem(
            size,
            txt: "Contact us",
            link: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const ContactUsPage(),
                      type: PageTransitionType.topToBottom));
            },
          ),
          settingItem(
            size,
            txt: "Report",
            link: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const ReportPage(),
                      type: PageTransitionType.topToBottom));
            },
          ),
          settingItem(
            size,
            txt: "Help",
            link: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const HelpPage(),
                      type: PageTransitionType.topToBottom));
            },
          ),
        ],
      ),
    );
  }

  Widget settingItem(Size size,
      {required String txt, required VoidCallback link}) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 25),
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 1),
        tween: Tween(begin: 0.0, end: 5.0),
        builder: (context, value, child) => Transform.translate(
          offset: Offset(0, value * -1),
          child: Container(
            child: Row(
              children: [
                Container(
                  width: size.width * 0.590,
                  // color: Colors.red,
                  child: Text(
                    txt,
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Mulish",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                InkWell(
                  onTap: link,
                  child: Container(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: HexColor("#F5F5F5"),
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
