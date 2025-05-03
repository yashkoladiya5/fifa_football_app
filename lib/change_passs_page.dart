// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChangePassPage extends StatefulWidget {
  const ChangePassPage({super.key});

  @override
  State<ChangePassPage> createState() => _ChangePassPageState();
}

class _ChangePassPageState extends State<ChangePassPage> {
  final _formfilld = GlobalKey<FormState>();
  final TextEditingController _currentpass = TextEditingController();
  final TextEditingController _changePass = TextEditingController();
  final TextEditingController _confirmpass = TextEditingController();
  bool _obscurtxt = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              "Change Password",
              style: TextStyle(
                  color: HexColor("#F5F5F5"),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Mulish",
                  fontSize: 20),
            ),
          ),
        ),
      ),
      body: Form(
        key: _formfilld,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: TextFormField(
                    controller: _currentpass,
                    validator: (value) {
                      if (_currentpass.text.length < 6) {
                        return "password must be longer than 6 letters";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Current password",
                        hintStyle: TextStyle(
                            color: HexColor("#B5B5B5"),
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700,
                            fontSize: 16)),
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: TextFormField(
                    controller: _changePass,
                    obscureText: _obscurtxt,
                    validator: (value) {
                      if (_changePass.text.length < 6) {
                        return "password must be longer than 6 letters";
                      } else {
                        return null;
                      }
                    },
                    onTap: () {
                      setState(() {
                        _obscurtxt = !_obscurtxt;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "New password",
                        hintStyle: TextStyle(
                          color: HexColor("#B5B5B5"),
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        suffixIcon: Icon(
                          _obscurtxt ? Icons.visibility_off : Icons.visibility,
                          color: HexColor("#B5B5B5"),
                        )),
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: TextFormField(
                    controller: _confirmpass,
                    validator: (value) {
                      if (_confirmpass.text != _changePass.text) {
                        return "password must be same with upper password";
                      } else {
                        return null;
                      }
                    },
                    onTap: () {
                      setState(() {
                        _obscurtxt = !_obscurtxt;
                      });
                    },
                    obscureText: _obscurtxt,
                    decoration: InputDecoration(
                        hintText: "Confirm password",
                        hintStyle: TextStyle(
                          color: HexColor("#B5B5B5"),
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        suffixIcon: Icon(
                          _obscurtxt ? Icons.visibility_off : Icons.visibility,
                          color: HexColor("#B5B5B5"),
                        )),
                    style: TextStyle(
                      color: HexColor("#F5F5F5"),
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 220,
                ),
                TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "forgot password?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Mulish",
                            color: HexColor("#31A8FF")),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 250,
            ),
            InkWell(
              onTap: () {
                if (_formfilld.currentState!.validate()) {
                  Navigator.pop(context);
                }
              },
              child: TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 0.0, end: 10.0),
                builder: (context, value, child) => Transform.translate(
                  offset: Offset(0, value * -1),
                  child: Container(
                    height: size.height * 0.060,
                    width: size.width * 0.240,
                    // color: Colors.redAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
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
                        style: TextStyle(
                            color: HexColor("#F5F5F5"),
                            fontSize: 16,
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
      ),
    );
  }
}
