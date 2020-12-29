import 'package:courses_workshop/screens/login/login_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawAppbar(
        actionWidget: Container(),
        context: context,
        leadingWidget: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
            color: kDarkColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          // onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    writeQuickText(
                      text: "Forget Password",
                      fontSize: 28.0,
                    ),
                    SizedBox(
                      height: 150.0,
                    ),
                    buildDefaultTextField(
                        title: 'Email',
                        hint: 'Sarahsmith@gmail.com',
                        controller: emailController,
                        type: TextInputType.emailAddress),
                    SizedBox(
                      height: 150.0,
                    ),
                    buildDefaultButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: emailController.text != ""
                                  ? Text(
                                      'We Send Code to ${emailController.text}')
                                  : Text('Enter ur email first')));
                        },
                        text: 'Send Code'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          navigateTo(context, LoginScreen());
                        },
                        child: writeQuickText(
                          text: "Login",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
