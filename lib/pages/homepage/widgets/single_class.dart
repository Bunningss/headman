import 'package:flutter/material.dart';
import 'package:headman/constants/variables.dart';
import 'package:headman/global_widgets/text_medium.dart';
import 'package:headman/global_widgets/text_title.dart';

Widget classWidget(String day, int batchNo, int classNo, String time) {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        height: 100,
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: GlobalVariables.primaryColor.withOpacity(1),
                  offset: const Offset(-2, 4),
                  blurRadius: 0,
                  spreadRadius: 2,
                ),
              ],
              border: Border.all(width: 1, color: GlobalVariables.primaryColor),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textHeader(day),
                  textMedium('Batch - #$batchNo', 0, 0),
                  textMedium('Class - #$classNo', 0, 0)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [textMedium(time, 0, 0)],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      )
    ],
  );
}
