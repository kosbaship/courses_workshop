import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class CoursesScreenSecondLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 12.0),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: kWhiteColor,
              border: Border.all(
                width: 3,
                color: kWhiteColor,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // left
                  Expanded(
                    child: circularIcon(
                      heroTag: "2ndUx/Ui",
                      icon: Icon(
                        Icons.school,
                        size: 25,
                        color: kPaleLilacColor,
                      ),
                    ),
                    flex: 3,
                  ),

                  // center
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "UI/UX",
                          // style: TextStyle(fontSize: 16),
                        ),
                        quickCustomText(
                            text:
                                "Learn user interface and how people interact with your designs",
                            textAlign: TextAlign.start,
                            fontSize: 10,
                            color: kGreyDarkColor),
                      ],
                    ),
                    flex: 6,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 1,
                    ),
                  ),
                  // right
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                          color: kDarkColor,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: kDarkColor,
                            ),
                          ],
                        )
                      ],
                    ),
                    flex: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        quickCustomText(
                          text: "32 Lectures",
                          fontSize: 16,
                        ),
                        quickCustomText(
                          text: "64 h, 16 m",
                          fontSize: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    quickCustomText(
                        text: "This course includes",
                        fontSize: 12,
                        textAlign: TextAlign.start),
                    SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.question_answer_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  quickCustomText(
                                    text: "24 Quizzes",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.file_copy_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  quickCustomText(
                                    text: "16 Support files",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.question_answer_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  quickCustomText(
                                    text: "8 Article",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.loop_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  quickCustomText(
                                    text: "Full Time Access",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.smartphone_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  quickCustomText(
                                    text: "Mobile, Desktop",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_indent_increase_sharp,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  quickCustomText(
                                    text: "Certificate",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            quickCustomText(
                                text: "Price",
                                fontSize: 10,
                                textAlign: TextAlign.start),
                            quickCustomText(
                                text: "\$16.99",
                                fontSize: 20,
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: 8.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 160,
            height: 46.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.zero,
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(35.0),
              ),
              color: kLightishPurpleColor,
            ),
            child: Center(
              child: quickCustomText(
                text: "Start Today",
                color: kWhiteColor,
                fontSize: 14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
