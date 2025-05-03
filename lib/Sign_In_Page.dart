// ignore_for_file: file_names, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/Sign_Up_Page.dart';
import 'package:football_app/Widget/Textstyle.dart';
import 'package:football_app/forget_pass_page.dart';
import 'package:football_app/main_page.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formField = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/Rectangle 580.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Form(
              key: _formField,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.090,
                  ),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(seconds: 1),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Text(
                        "S I G N   I N",
                        style: MyTextStyle(myfontsize: 40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.280,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 15),
                    child: TweenAnimationBuilder(
                      tween: Tween(begin: 1.0, end: 0.0),
                      duration: const Duration(milliseconds: 500),
                      builder: (context, value, child) => Transform.translate(
                        offset: Offset(3, value * 50),
                        child: TextFormField(
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
                          controller: emailcontroller,
                          style: MyTextStyle(myfontsize: 18),
                          decoration: InputDecoration(
                              hintText: "Email Id",
                              hintStyle: MyTextStyle(
                                  myfontsize: 18, mycolor: "#B5B5B5"),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#545863"))),
                              border: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 15),
                    child: TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween(begin: 1.0, end: 0.0),
                      builder: (context, value, child) => Transform.translate(
                        offset: Offset(3, value * 50),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter password";
                            } else if (passcontroller.text.length < 6) {
                              return "password must contain 6 letters";
                            }
                            return null;
                          },
                          controller: passcontroller,
                          style: MyTextStyle(myfontsize: 18),
                          obscureText: passToggle,
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(passToggle
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              suffixIconColor: Colors.white,
                              hintText: "password",
                              hintStyle: MyTextStyle(
                                  myfontsize: 18, mycolor: "#B5B5B5"),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#545863"))),
                              border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const ForgetPassPage(),
                                type: PageTransitionType.fade));
                      },
                      child: TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 500),
                        tween: Tween(begin: 1.0, end: 0.0),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(0, value * 50),
                          child: SizedBox(
                            height: height * 0.050,
                            width: width * 0.600,
                            // color: Colors.red,
                            child: Text(
                              "forget password?",
                              style: MyTextStyle(
                                  myfontsize: 16, mycolor: "#31A8FF"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.040,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formField.currentState!.validate()) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const MainPage(),
                                type: PageTransitionType.fade));
                      }
                    },
                    child: TweenAnimationBuilder(
                      duration: const Duration(seconds: 2),
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
                            child: TweenAnimationBuilder(
                              duration: const Duration(seconds: 1),
                              tween: Tween(begin: 0.0, end: 1.0),
                              child: child,
                              builder: (context, value, child) => Opacity(
                                opacity: value,
                                child: Text(
                                  "SIGN IN",
                                  style: MyTextStyle(myfontsize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TweenAnimationBuilder(
                        duration: const Duration(seconds: 2),
                        tween: Tween(begin: 0.0, end: 1.0),
                        builder: (context, value, child) => Opacity(
                          opacity: value,
                          child: Text(
                            "Not have An account?",
                            style: MyTextStyle(myfontsize: 17),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const SignUpPage(),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: TweenAnimationBuilder(
                          duration: const Duration(seconds: 2),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) => Opacity(
                            opacity: value,
                            child: Text(
                              " Sign Up",
                              style: MyTextStyle(
                                  myfontsize: 17, mycolor: "#31A8FF"),
                            ),
                          ),
                        ),
                      ),
                    ],
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
