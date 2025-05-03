// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:football_app/Widget/Textstyle.dart';
// import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'create_pass_page.dart';

class ForgetPassPage extends StatefulWidget {
  const ForgetPassPage({super.key});

  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

class _ForgetPassPageState extends State<ForgetPassPage> {
  final emailControl = TextEditingController();
  final _formfild = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        // extendBodyBehindAppBar: true,
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
          child: Form(
            key: _formfild,
            child: SingleChildScrollView(
              // physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 500),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Container(
                        // color: Colors.red,
                        height: 35,
                        width: 206,
                        child: Text(
                          "Forgot password?",
                          style:
                              MyTextStyle(myfontsize: 24, mycolor: "#FFFFFF"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                  TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 500),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) => Transform.translate(
                      offset: Offset(3, value * -20),
                      child: Container(
                        height: 70,
                        width: 315,
                        child: Text(
                          "Please, Enter your email address. you will receive a link to create a new password via email.",
                          style: MyTextStyle(myfontsize: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 326,
                    child: TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) => Transform.translate(
                        offset: Offset(3, value * -20),
                        child: TextFormField(
                          controller: emailControl,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter EMail";
                            }
                            bool emailvalid = RegExp(
                                    r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value);
                            if (!emailvalid) {
                              return "Enter valid Email";
                            }
                            return null;
                          },
                          style: MyTextStyle(myfontsize: 16),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#545863"))),
                              border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              hintText: "Email Id",
                              hintStyle: MyTextStyle(myfontsize: 18)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formfild.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const CreateNewPassPage();
                          },
                        ));
                      }
                    },
                    child: TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) => Opacity(
                        opacity: value,
                        child: Container(
                          height: 54,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  HexColor("#282F3F"),
                                  HexColor("#151922")
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                offset: const Offset(0, 4),
                                color: HexColor("#000000"),
                                spreadRadius: 0,
                              ),
                              BoxShadow(
                                blurRadius: 7,
                                offset: const Offset(0, -3),
                                color: HexColor("#2D3545"),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "SEND",
                              style: MyTextStyle(myfontsize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
