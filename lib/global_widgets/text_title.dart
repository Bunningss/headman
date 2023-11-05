import 'package:flutter/material.dart';
import 'package:headman/constants/variables.dart';

Text textHeader(String content) {
  return Text(
    content,
    style: TextStyle(fontSize: 28, color: GlobalVariables.primaryColor),
  );
}
