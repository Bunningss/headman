import 'package:flutter/material.dart';
import 'package:headman/constants/variables.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int iconData;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: Align(
              widthFactor: 1,
              heightFactor: 1,
              child: Icon(IconData(iconData)),
            ),
            contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            enabled: true,
            hintText: hintText,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide:
                  BorderSide(color: GlobalVariables.primaryColor, width: 2),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              // borderSide:
              //     BorderSide(color: GlobalVariables.primaryColor, width: 2),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
