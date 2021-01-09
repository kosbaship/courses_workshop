import 'package:courses_workshop/screens/welcome/welcome_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:courses_workshop/shared/network/local/shared_prefs.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: writeQuickText(
              text: "Settings",
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: writeQuickText(
              text: "Account Settings",
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          drawSettingsCardItem(
              onTap: () {
                showToast(message: " Under Developing ", error: false);
              },
              text: "Account Security"),
          drawSettingsCardItem(
              onTap: () {
                showToast(message: " Under Developing ", error: false);
              },
              text: "Email notifications"),
          drawSettingsCardItem(
              onTap: () {
                showToast(message: " Under Developing ", error: false);
              },
              text: "Push notifications"),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: writeQuickText(
              text: "Support",
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          drawSettingsCardItem(
              onTap: () {
                showToast(message: " Under Developing ", error: false);
              },
              text: "About App"),
          drawSettingsCardItem(
              onTap: () {
                showToast(message: " Under Developing ", error: false);
              },
              text: "FAQs"),
          drawSettingsCardItem(
              onTap: () {
                showToast(message: " Under Developing ", error: false);
              },
              text: "Contact Us"),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: buildDefaultButton(
                onPressed: () {
                  removeToken().then(
                      (value) => navigateAndFinish(context, WelcomeScreen()));
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
