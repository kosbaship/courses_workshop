import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/courses_first_layer.dart';
import 'widgets/courses_second_layer.dart';
import 'widgets/courses_third_layer.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this screen designed in three layers
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // this is the title
            quickCustomText(
              text: "Courses",
              textAlign: TextAlign.start,
              fontSize: 28,
            ),
            SizedBox(
              height: 5,
            ),
            CoursesScreenFirstLayer(),
            SizedBox(
              height: 30,
            ),
            CoursesScreenSecondLayer(),
            SizedBox(
              height: 15,
            ),
            CoursesScreenThirdLayer(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
