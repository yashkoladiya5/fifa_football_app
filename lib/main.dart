// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'Dropdownbutton.dart';
import 'Home_Page.dart';

import 'package:football_app/Prediction_confirmation_page.dart';
import 'package:football_app/Sign_Up_Page.dart';
import 'germany_player.dart';
import 'live_page.dart';
import 'package:football_app/main_page.dart';
import 'package:football_app/prediction_done_page.dart';
import 'package:football_app/prediction_page_2.dart';
import 'package:football_app/setting_page.dart';
import 'package:football_app/to_leaderboard_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
