import 'package:flutter/material.dart';
import 'package:headman/constants/variables.dart';
import 'package:headman/global_widgets/text_medium.dart';
import 'package:headman/global_widgets/text_title.dart';

class GreetUser extends StatelessWidget {
  const GreetUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 150,
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: GlobalVariables.primaryColor.withOpacity(1),
                    offset: const Offset(-4, 8),
                    blurRadius: 0,
                    spreadRadius: 2,
                  ),
                ],
                border:
                    Border.all(width: 1, color: GlobalVariables.primaryColor),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textMedium('Welcome,', 0, 0),
                    textHeader('John Doe'),
                    textMedium('English language trainer, IELTS', 0, 0),
                    textMedium('11:30 - 08:30', 0, 0),
                  ],
                ),
              ],
            )));
  }
}
