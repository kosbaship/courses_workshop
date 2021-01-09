import 'dart:ui';

import 'package:courses_workshop/models/category_model.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            writeQuickText(
              text: "Search Courses",
              fontSize: 28,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsetsDirectional.only(
                start: 16.0,
              ),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kWhiteColor,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      onTap: () {},
                      // controller: ,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16.0, color: kGreyColor),
                        hintText: "Start search...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: kLightishPurpleColor,
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.search,
                        color: kWhiteColor,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 155,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>
                    drawCategoryCard(categories[index]),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 20.0,
                ),
                itemCount: categories.length,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                buildExpandedCourseItem(
                  startToday: () {
                    showToast(message: " Under Developing ", error: false);
                  },
                  startDate: '2021-01-01',
                  price: 16.99.toString(),
                  image: NetworkImage("http://via.placeholder.com/350x150"),
                  title: "Wordpress",
                  description: "Create your own website from scratch ",
                ),
                SizedBox(
                  height: 15,
                ),
                buildExpandedCourseItem(
                  startToday: () {
                    showToast(message: " Under Developing ", error: false);
                  },
                  startDate: '2021-01-01',
                  price: 16.99.toString(),
                  image: NetworkImage("http://via.placeholder.com/350x150"),
                  title: "WebDesign",
                  description:
                      "Become a Web Site that looks great on all devices ",
                ),
                SizedBox(
                  height: 15,
                ),
                buildExpandedCourseItem(
                  startToday: () {
                    showToast(message: " Under Developing ", error: false);
                  },
                  startDate: '2021-01-01',
                  price: 16.99.toString(),
                  image: NetworkImage("http://via.placeholder.com/350x150"),
                  title: "CSS",
                  description: "Learn CSS for first time will increase",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
