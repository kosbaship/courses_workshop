import 'package:courses_workshop/models/category_model.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this screen designed in three layers
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // this is the title
              writeQuickText(
                text: "Courses",
                textAlign: TextAlign.start,
                fontSize: 28,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 155,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) =>
                      drawCategoryCard(categories[index]),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: 20.0,
                  ),
                  itemCount: categories.length,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  buildExpandedCourseItem(
                      startToday: () {
                        showToast(message: " Under Developing ", error: false);
                      },
                      price: 16.99,
                      widget: Icon(Icons.work),
                      title: "Wordpress",
                      description: "Create your own website from scratch ",
                      initiallyExpanded: true),
                  SizedBox(
                    height: 15,
                  ),
                  buildExpandedCourseItem(
                    startToday: () {
                      showToast(message: " Under Developing ", error: false);
                    },
                    price: 16.99,
                    widget: Icon(Icons.web),
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
                    price: 16.99,
                    widget: Icon(Icons.handyman_outlined),
                    title: "Vue js",
                    description: "An awesome javascript framework build",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  buildExpandedCourseItem(
                    startToday: () {
                      showToast(message: " Under Developing ", error: false);
                    },
                    price: 16.99,
                    widget: Icon(Icons.eco),
                    title: "CSS",
                    description: "Learn CSS for first time will increase",
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
