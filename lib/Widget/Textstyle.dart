import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

TextStyle MyTextStyle({
  double myfontsize = 10,
  // dynamic myfontWeight = FontWeight.bold,
  String myfontFamily = "Mulish",
  dynamic mycolor = "#F5F5F5",
}) =>
    TextStyle(
      fontSize: myfontsize,
      // fontWeight: myfontWeight,
      fontFamily: "Mulish",
      color: HexColor(mycolor),
    );
