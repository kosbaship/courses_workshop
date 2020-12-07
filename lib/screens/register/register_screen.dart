import 'package:courses_workshop/screens/login/login_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: quickCustomText(
              text: "Register",
              fontSize: 30,
              color: kPrimaryTextColor
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child:  Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16.0,
              end: 16.0,
              top: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                defaultTextFormField(
                    title: 'First Name',
                    hint: 'Adel',
                    controller: firstNameController,
                    type: TextInputType.emailAddress
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultTextFormField(
                    title: 'Last Name',
                    hint: 'Adham',
                    controller: lastNameController,
                    type: TextInputType.emailAddress
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultTextFormField(
                    title: 'Email',
                    hint: 'example@google.com',
                    controller: emailController,
                    type: TextInputType.emailAddress
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultTextFormField(
                    title: 'Password',
                    hint: '***************',
                    controller: passwordController,
                    type: TextInputType.visiblePassword
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Your account is registered Successfully'),
                      ));
                    },
                    text: 'sign up'
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                    onPressed: (){
                      navigateToAndClose(context, LoginScreen());
                    },
                    text: 'login',
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
                    text: "Forget your password .. ?",
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