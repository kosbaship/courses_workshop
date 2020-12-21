import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: quickCustomText(
        text: "Courses",
        fontSize: 28,
      ),
    );
  }
}
