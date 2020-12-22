import 'package:courses_workshop/screens/courses/widgets/third_layer_list_item.dart';
import 'package:flutter/material.dart';

class CoursesScreenThirdLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listItem(
          heroTag: "3rdOne",
          titleText: "Wordpress",
          bodyText: "Create your own website from scratch ",
        ),
        SizedBox(
          height: 15,
        ),
        listItem(
          heroTag: "3rdTwo",
          titleText: "WebDesign",
          bodyText: "Become a Web Site that looks great on all devices ",
        ),
        SizedBox(
          height: 15,
        ),
        listItem(
          heroTag: "3rdThree",
          titleText: "Vue js",
          bodyText: "An awesome javascript framework build",
        ),
        SizedBox(
          height: 15,
        ),
        listItem(
          heroTag: "3rdFour",
          titleText: "CSS",
          bodyText: "Learn CSS for first time will increase",
        ),
      ],
    );
  }
}
