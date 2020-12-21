import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: quickCustomText(
        text: "Search Courses",
        fontSize: 28,
      ),
    );
  }
}
