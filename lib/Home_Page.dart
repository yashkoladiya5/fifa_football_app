// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:football_app/Sign_In_Page.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: const SignInPage(),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/Rectangle 580.png"),
                fit: BoxFit.fill)),
        child: Center(
          child: TweenAnimationBuilder(
            duration: const Duration(milliseconds: 600),
            tween: Tween(begin: 150.0, end: 250.0),
            builder: (context, value, child) => Container(
                height: value,
                width: value,
                child: Image.asset(
                  "image/000-05 1.png",
                )),
          ),
        ),
      ),
    ));
  }
}
