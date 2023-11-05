import 'package:flutter/material.dart';
import 'package:headman/constants/variables.dart';
import 'package:headman/pages/auth/sign_in/sign_in.dart';
import 'package:headman/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headman Academy',
      theme: ThemeData(
        fontFamily: 'CarterOne',
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.primaryColor),
        scaffoldBackgroundColor: GlobalVariables.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.red),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const SignIn(),
    );
  }
}
