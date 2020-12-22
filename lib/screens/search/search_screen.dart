import 'package:courses_workshop/screens/search/widgets/search_second_layer.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

import 'widgets/Search_third_layer.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            quickCustomText(
              text: "Search Courses",
              fontSize: 28,
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 16.0,
                  ),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kWhiteColor,
                      border: Border.all(
                        width: 3,
                        color: kWhiteColor,
                      )),
                  child: TextField(
                    onTap: () {},
                    // controller: ,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 16.0, color: kGreyColor),
                      hintText: "Start search...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 60,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: kLightishPurpleColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        color: kWhiteColor,
                        size: 35,
                      ),
                    ),
                  ),
                  right: 0,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SearchScreenSecondLayer(),
            SizedBox(
              height: 20,
            ),
            SearchScreenThirdLayer(),
          ],
        ),
      ),
    );
  }
}
