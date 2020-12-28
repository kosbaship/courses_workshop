import 'package:courses_workshop/shared/colors/common_colors.dart';
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
              buildQuickText(
                text: "Courses",
                textAlign: TextAlign.start,
                fontSize: 28,
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    buildProfileCard(
                      title: 'Branding',
                      shape: Icon(
                        Icons.lightbulb_outline,
                        size: 25,
                        color: kPaleLilacColor,
                      ),
                      function: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buildProfileCard(
                      title: 'Design',
                      shape: Icon(
                        Icons.design_services_outlined,
                        size: 25,
                        color: kPaleLilacColor,
                      ),
                      function: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buildProfileCard(
                      title: 'Web',
                      shape: Icon(
                        Icons.web_outlined,
                        size: 25,
                        color: kPaleLilacColor,
                      ),
                      function: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buildProfileCard(
                      title: 'Mobile',
                      shape: Icon(
                        Icons.smartphone_outlined,
                        size: 25,
                        color: kPaleLilacColor,
                      ),
                      function: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buildProfileCard(
                      title: 'Code',
                      shape: Icon(
                        Icons.code_outlined,
                        size: 25,
                        color: kPaleLilacColor,
                      ),
                      function: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buildProfileCard(
                      title: 'Business',
                      shape: Icon(
                        Icons.business_center_outlined,
                        size: 25,
                        color: kPaleLilacColor,
                      ),
                      function: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  buildDetailedCourseItem(
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
                  buildDetailedCourseItem(
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
                  buildDetailedCourseItem(
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
                  buildDetailedCourseItem(
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
