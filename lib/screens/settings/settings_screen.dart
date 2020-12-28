import 'package:courses_workshop/screens/welcome/welcome_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: buildQuickText(
              text: "Settings",
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: buildQuickText(
              text: "Account Settings",
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: kWhiteColor,
            ),
            child: Column(
              children: [
                drawSettingsCardItem(onTap: () {}, text: "Account Security"),
                Divider(
                  thickness: 3,
                  color: kPaleLilacColor,
                ),
                drawSettingsCardItem(onTap: () {}, text: "Email notifications"),
                Divider(
                  thickness: 3,
                  color: kPaleLilacColor,
                ),
                drawSettingsCardItem(onTap: () {}, text: "Push notifications"),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: buildQuickText(
              text: "Support",
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: kWhiteColor,
            ),
            child: Column(
              children: [
                drawSettingsCardItem(onTap: () {}, text: "About App"),
                Divider(
                  thickness: 3,
                  color: kPaleLilacColor,
                ),
                drawSettingsCardItem(onTap: () {}, text: "FAQs"),
                Divider(
                  thickness: 3,
                  color: kPaleLilacColor,
                ),
                drawSettingsCardItem(onTap: () {}, text: "Contact Us"),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: buildDefaultButton(
                onPressed: () {
                  removeToken();
                  navigateAndFinish(context, WelcomeScreen());
                },
                text: "Sign out",
                backgroundColor: kPaleLilacColor,
                borderColor: kDarkColor,
                textColor: kDarkColor),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
