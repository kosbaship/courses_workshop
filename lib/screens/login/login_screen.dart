import 'package:courses_workshop/screens/register/register_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  var myKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: quickCustomText(
        text: "Login",
        fontSize: 30,
        color: kPrimaryTextColor
    ),
    centerTitle: true,
    ),
    key: myKey,
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 16.0,
          end: 16.0,
          top: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logo(),
            defaultTextFormField(
                title: 'email',
                hint: 'example@google.com',
                controller: emailController,
                type: TextInputType.emailAddress
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultTextFormField(
                title: 'password',
                hint: '***************',
                controller: passwordController,
                type: TextInputType.visiblePassword
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultButton(
                onPressed: (){
                  // navigateTo(context, LoginScreen());
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Your account is Logged in Successfully'),
                  ));
                },
                text: 'login'
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultButton(
                onPressed: (){
                  navigateTo(context, RegisterScreen());
                },
                text: 'sign up',
                textColor:kPrimaryColor ,
                borderColor: kPrimaryColor,
                backgroundColor: kPrimaryTextColor
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: (){},
              child: quickCustomText(
                text: "Forget Password .. ?",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    ));
  }
}
