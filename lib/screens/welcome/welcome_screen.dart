import 'package:courses_workshop/screens/login/login_screen.dart';
import 'package:courses_workshop/screens/register/register_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20.0,
              end: 20.0,
              top: 16.0,
            ),
            child: Column(
              children: [
                writeMainHeader(
                  text: "Welcome to Courses",
                ),
                drawLogo(),
                buildDefaultButton(
                    onPressed: () {
                      navigateToReplaceMe(context, LoginScreen());
                    },
                    text: 'login'),
                SizedBox(
                  height: 25.0,
                ),
                buildDefaultButton(
                    onPressed: () {
                      navigateToReplaceMe(context, RegisterScreen());
                    },
                    text: 'sign up',
                    textColor: kLightishPurpleColor,
                    borderColor: kLightishPurpleColor,
                    backgroundColor: kPaleLilacColor),
                SizedBox(
                  height: 25.0,
                ),
                writeQuickText(
                  text: "Or Login with",
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: kLightishPurpleColor,
                      child: Image(
                        image: AssetImage('assets/images/google.png'),
                        height: 25.0,
                        width: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: kLightishPurpleColor,
                      child: Image(
                        image: AssetImage('assets/images/facebook.png'),
                        height: 25.0,
                        width: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
