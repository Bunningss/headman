import 'package:flutter/material.dart';
import 'package:headman/constants/variables.dart';

Widget textMedium(String content, double vPadding, double hPadding) {
  return Column(
    children: [
      SizedBox(
        height: vPadding,
      ),
      Text(
        content,
        style: TextStyle(fontSize: 14, color: GlobalVariables.primaryColor),
      ),
      SizedBox(
        height: vPadding,
      ),
    ],
  );
}
