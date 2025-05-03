// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:football_app/Sign_In_Page.dart';
import 'package:football_app/Widget/Textstyle.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateNewPassPage extends StatefulWidget {
  const CreateNewPassPage({super.key});

  @override
  State<CreateNewPassPage> createState() => _CreateNewPassPageState();
}

class _CreateNewPassPageState extends State<CreateNewPassPage> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: HexColor("#1B202B"),
        appBar: AppBar(
            backgroundColor: HexColor("#1B202B"),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ))),
        body: Center(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 70,
            ),
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 500),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Container(
                  // color: Colors.red,
                  height: 30,
                  width: 255,
                  child: Text(
                    "Create New Password",
                    style: MyTextStyle(myfontsize: 24, mycolor: "#FFFFFF"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              width: 326,
              child: TweenAnimationBuilder(
                duration: const Duration(milliseconds: 500),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Transform.translate(
                  offset: Offset(3, value * -20),
                  child: TextField(
                    obscureText: _obscuretext,
                    style: MyTextStyle(myfontsize: 18),
                    // textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscuretext = !_obscuretext;
                          });
                        },
                        child: Icon(
                          _obscuretext
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: HexColor("#F5F5F5"),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: HexColor("#545863"))),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: HexColor("#545863"), width: 1.0)),
                      hintText: "Create Password",
                      hintStyle:
                          MyTextStyle(myfontsize: 18, mycolor: "#B5B5B5"),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 326,
              child: TweenAnimationBuilder(
                duration: const Duration(milliseconds: 500),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Transform.translate(
                  offset: Offset(3, value * -20),
                  child: TextField(
                    obscureText: _obscuretext,
                    style: MyTextStyle(myfontsize: 18),
                    // textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscuretext = !_obscuretext;
                          });
                        },
                        child: Icon(
                          _obscuretext
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: HexColor("#545863"))),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: HexColor("#545863"), width: 2.0)),
                      hintText: "Confirm Password",
                      hintStyle:
                          MyTextStyle(myfontsize: 18, mycolor: "#B5B5B5"),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SignInPage();
                  },
                ));
              },
              child: Container(
                height: 54,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
                    "SAVE",
                    style: MyTextStyle(myfontsize: 16),
                  ),
                ),
              ),
            ),
          ]),
        )));
  }
}
