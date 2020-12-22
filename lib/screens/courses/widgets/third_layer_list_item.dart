import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

listItem({
  @required heroTag,
  @required titleText,
  @required bodyText,
}) =>
    Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          // left
          Expanded(
            child: circularIcon(
              heroTag: heroTag,
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
                  titleText,
                  // style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 3,
                ),
                quickCustomText(
                    text: bodyText,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                quickCustomText(
                  text: "Total ratings",
                  fontSize: 9,
                  // textAlign: TextAlign.start,
                  color: kDarkColor,
                ),
                SizedBox(
                  height: 3,
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
    );
