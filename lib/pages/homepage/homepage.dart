import 'package:flutter/material.dart';
import 'package:headman/global_widgets/app_bar.dart';
import 'package:headman/global_widgets/container.dart';
import 'package:headman/global_widgets/text_medium.dart';
import 'package:headman/pages/homepage/widgets/single_class.dart';
import 'package:headman/pages/homepage/widgets/greet.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar('Headman Academy'),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: container(_homepage(), 8, 8),
          ),
        ),
      ),
    );
  }
}

Widget _homepage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const GreetUser(),
      textMedium('Classes for this week:', 16, 0),
      classWidget('Sunday', 31, 25, '03:00 - 04:30'),
      classWidget('Monday', 35, 11, '11:30 - 01:00'),
      classWidget('Tuesday', 29, 13, '06:30 - 07:30'),
      classWidget('Wednesday', 34, 19, '11:30 - 01:00'),
      classWidget('Wednesday', 34, 19, '11:30 - 01:00'),
      classWidget('Wednesday', 34, 19, '11:30 - 01:00'),
      classWidget('Wednesday', 34, 19, '11:30 - 01:00'),
      classWidget('Wednesday', 34, 19, '11:30 - 01:00'),
      classWidget('Wednesday', 34, 19, '11:30 - 01:00'),
    ],
  );
}
