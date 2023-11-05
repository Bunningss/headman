import 'package:flutter/material.dart';

AppBar appBar(String appBarLabel) {
  return AppBar(
    centerTitle: true,
    title: Text(
      appBarLabel,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
