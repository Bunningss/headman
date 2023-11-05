import 'package:flutter/material.dart';
import 'package:headman/pages/auth/sign_in/sign_in.dart';
import 'package:headman/pages/homepage/homepage.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SignIn.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignIn(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Text("Default Page"),
        ),
      );
  }
}
