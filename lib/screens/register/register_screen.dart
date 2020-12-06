import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: quickCustomText(
              text: "Register",
              fontSize: 30,
              color: kPrimaryTextColor
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView());
  }
}