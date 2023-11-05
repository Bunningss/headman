import 'package:flutter/material.dart';

Widget container(Widget body, double horizPad, double verPad) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizPad, vertical: verPad),
      child: body);
}
