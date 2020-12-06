import 'package:courses_workshop/screens/welcome/welcome_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Courses',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: WelcomeScreen(),

    );
  }
}
