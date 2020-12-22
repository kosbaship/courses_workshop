import 'package:courses_workshop/screens/login/login_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            quickCustomText(
              text: "Settings",
              fontSize: 28,
            ),
            SizedBox(
              height: 25,
            ),
            quickCustomText(
              text: "Account Settings",
              fontSize: 14,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 15, top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: kWhiteColor,
              ),
              child: Column(
                children: [
                  settingsCardItem(onTap: () {}, text: "Account Security"),
                  Divider(
                    thickness: 3,
                    color: kPaleLilacColor,
                  ),
                  settingsCardItem(onTap: () {}, text: "Email notifications"),
                  Divider(
                    thickness: 3,
                    color: kPaleLilacColor,
                  ),
                  settingsCardItem(onTap: () {}, text: "Push notifications"),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            quickCustomText(
              text: "Support",
              fontSize: 14,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 15, top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: kWhiteColor,
              ),
              child: Column(
                children: [
                  settingsCardItem(onTap: () {}, text: "About App"),
                  Divider(
                    thickness: 3,
                    color: kPaleLilacColor,
                  ),
                  settingsCardItem(onTap: () {}, text: "FAQs"),
                  Divider(
                    thickness: 3,
                    color: kPaleLilacColor,
                  ),
                  settingsCardItem(onTap: () {}, text: "Contact Us"),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            defaultButton(
                onPressed: () {
                  removeToken();
                  navigateAndFinish(context, LoginScreen());
                },
                text: "Sign out",
                backgroundColor: kPaleLilacColor,
                borderColor: kDarkColor,
                textColor: kDarkColor),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
