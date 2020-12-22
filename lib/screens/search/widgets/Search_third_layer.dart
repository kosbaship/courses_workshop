import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class SearchScreenThirdLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listItem(
          heroTag: "Search3rdOne",
          titleText: "Wordpress",
          bodyText: "Create your own website from scratch ",
        ),
        SizedBox(
          height: 15,
        ),
        listItem(
          heroTag: "Search3rdTwo",
          titleText: "WebDesign",
          bodyText: "Become a Web Site that looks great on all devices ",
        ),
        SizedBox(
          height: 15,
        ),
        listItem(
          heroTag: "Search3rdFour",
          titleText: "CSS",
          bodyText: "Learn CSS for first time will increase",
        ),
      ],
    );
  }
}
