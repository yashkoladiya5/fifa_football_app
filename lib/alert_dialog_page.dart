// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:football_app/main_page.dart';
// ignore: unused_import
import 'package:football_app/prediction_confirm_page.dart';
import 'package:hexcolor/hexcolor.dart';

class AlertDialogpage extends StatelessWidget {
  const AlertDialogpage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#1B202B"),
      body: Dialog(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: size.height * 0.250,
            width: double.infinity,
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
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.050,
                      width: size.width * 0.050,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/Vector.png"))),
                      child: Image.asset("image/Vector (1).png"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "Information",
                        style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish",
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "What you Predicted is wrong but the team you think wins has won.",
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Mulish",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: -20,
              right: 105,
              child: Container(
                // margin: EdgeInsets.only(botto: 20),
                padding: const EdgeInsets.only(bottom: 5),
                height: size.height * 0.050,
                width: size.height * .100,
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
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const MainPage();
                      },
                    ));
                  },
                  child: Center(
                    child: Text(
                      "ok",
                      style: TextStyle(
                          color: HexColor("#F5F5F5"),
                          fontSize: 14,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
