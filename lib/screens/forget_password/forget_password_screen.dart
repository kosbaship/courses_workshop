import 'package:courses_workshop/screens/login/login_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: quickCustomText(
          text: "Forget Password",
          fontSize: 30,
          color: kPrimaryTextColor
      ),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 16.0,
            end: 16.0,
            top: 16.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 150.0,
              ),
              defaultTextFormField(
                  title: 'email',
                  hint: 'example@google.com',
                  controller: emailController,
                  type: TextInputType.emailAddress
              ),
              SizedBox(
                height: 150.0,
              ),
              defaultButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: emailController.text != "" ? Text('We Send Code to ${emailController.text}') : Text('Enter ur email first' )
                    ));
                  },
                  text: 'Send Code'
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: (){
                  navigateTo(context, LoginScreen());
                },
                child: quickCustomText(
                  text: "Login",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
