// ignore_for_file: file_names, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:football_app/Widget/Textstyle.dart';
import 'package:football_app/main_page.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formfild = GlobalKey<FormState>();
  var _passcontroller = TextEditingController();
  var _confirmpasscontroller = TextEditingController();
  var _emailcontroller = TextEditingController();
  var _namecontroller = TextEditingController();
  bool _obscuretext = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool? isChecked = true;
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/Rectangle 580.png"),
                    fit: BoxFit.fill)),
            child: Center(
                child: Form(
              key: _formfild,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: size.height * 0.100),
                      TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 800),
                        tween: Tween(begin: 0.0, end: 1.0),
                        builder: (context, value, child) => Opacity(
                          opacity: value,
                          child: Text(
                            "S I G N   U P",
                            style: MyTextStyle(myfontsize: 40),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.205,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: TweenAnimationBuilder(
                          duration: const Duration(milliseconds: 800),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(3, value * -5),
                            child: TextFormField(
                              controller: _namecontroller,
                              validator: (value) {
                                if (_namecontroller.text.isEmpty) {
                                  return "Enter Name";
                                }
                                return null;
                              },
                              style: TextStyle(
                                  color: HexColor(
                                    "#F5F5F5",
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mulish"),
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: HexColor("#B5B5B5"),
                                      fontSize: 18,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w800),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("#545863"))),
                                  border: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(style: BorderStyle.none))),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: TweenAnimationBuilder(
                          duration: const Duration(milliseconds: 800),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(3, value * -5),
                            child: TextFormField(
                              controller: _emailcontroller,
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
                              style: TextStyle(
                                  color: HexColor(
                                    "#F5F5F5",
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mulish"),
                              decoration: InputDecoration(
                                  hintText: "Email Id",
                                  hintStyle: TextStyle(
                                      color: HexColor("#B5B5B5"),
                                      fontSize: 18,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w800),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("#545863"))),
                                  border: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(style: BorderStyle.none))),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: TweenAnimationBuilder(
                          duration: const Duration(milliseconds: 800),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(3, value * -5),
                            child: TextFormField(
                              controller: _passcontroller,
                              obscureText: _obscuretext,
                              validator: (value) {
                                if (_passcontroller.text.isEmpty) {
                                  return "Enter password";
                                } else if (_passcontroller.text.length < 6) {
                                  return "password Must be at least 6 characters long";
                                }
                                return null;
                              },
                              style: TextStyle(
                                  color: HexColor(
                                    "#F5F5F5",
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mulish"),
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
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: HexColor("#B5B5B5"),
                                      fontSize: 18,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w800),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("#545863"))),
                                  border: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(style: BorderStyle.none))),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: TweenAnimationBuilder(
                          duration: const Duration(milliseconds: 800),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(3, value * -5),
                            child: TextFormField(
                              validator: (value) {
                                if (_confirmpasscontroller.text.isEmpty) {
                                  return "Enter password";
                                } else if (_confirmpasscontroller.text !=
                                    _passcontroller.text) {
                                  return "password Must be same!";
                                }
                                return null;
                              },
                              controller: _confirmpasscontroller,
                              obscureText: _obscuretext,
                              style: TextStyle(
                                  color: HexColor(
                                    "#F5F5F5",
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mulish"),
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
                                  hintText: "Confirm Password",
                                  hintStyle: TextStyle(
                                      color: HexColor("#B5B5B5"),
                                      fontSize: 18,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w800),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("#545863"))),
                                  border: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(style: BorderStyle.none))),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                          Text(
                            "I Agree With",
                            style:
                                MyTextStyle(myfontsize: 16, mycolor: "#B5B5B5"),
                          ),
                          Text(" Privacy",
                              style: MyTextStyle(
                                  myfontsize: 16, mycolor: "#31A8FF")),
                          Text(" & ",
                              style: MyTextStyle(
                                  myfontsize: 16, mycolor: "#B5B5B5")),
                          Text("Policy",
                              style: MyTextStyle(
                                  myfontsize: 16, mycolor: "#31A8FF")),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      InkWell(
                        onTap: () {
                          if (_formfild.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const MainPage();
                              },
                            ));
                          }
                        },
                        child: TweenAnimationBuilder(
                          duration: const Duration(milliseconds: 800),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) =>
                              Transform.translate(
                            offset: Offset(3, value * -5),
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
                                  "SIGN UP",
                                  style: MyTextStyle(myfontsize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ))));
  }
}
