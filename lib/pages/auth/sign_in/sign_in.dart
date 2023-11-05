import 'package:flutter/material.dart';
import 'package:headman/global_widgets/app_bar.dart';
import 'package:headman/global_widgets/container.dart';
import 'package:headman/global_widgets/custom_text_field.dart';
import 'package:headman/global_widgets/primary_button.dart';
import 'package:headman/pages/homepage/homepage.dart';

class SignIn extends StatefulWidget {
  static const String routeName = '/sign-in';
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  navigateToNextPage() {
    Navigator.pushNamed(context, HomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar('Log in to your account'),
        body: Container(child: container(_signin(), 8, 0)),
      ),
    );
  }
}

Widget _signin() {
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  return Form(
    key: _signInFormKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextField(
          controller: _emailController,
          hintText: "Enter email",
          iconData: 0xe491,
        ),
        CustomTextField(
          controller: _passwordController,
          hintText: 'Enter Password',
          iconData: 0xe47a,
        ),
        PrimaryButton(
          label: 'Continue',
          onPressed: () {},
        )
      ],
    ),
  );
}
