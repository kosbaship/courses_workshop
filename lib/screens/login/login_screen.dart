import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: quickCustomText(
        text: "Login",
        fontSize: 30,
        color: kPrimaryTextColor
    ),
    centerTitle: true,
    ),
    body: SingleChildScrollView());
  }
}
