import 'dart:ui';

import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildQuickText(
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
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            onTap: () {},
                            // controller: ,
                            decoration: InputDecoration(
                              hintStyle:
                                  TextStyle(fontSize: 16.0, color: kGreyColor),
                              hintText: "Start search...",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        )
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
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
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
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
                height: 20,
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
                  ),
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
                    widget: Icon(Icons.eco),
                    title: "CSS",
                    description: "Learn CSS for first time will increase",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
