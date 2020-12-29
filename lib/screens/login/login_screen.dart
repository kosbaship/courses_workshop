import 'package:courses_workshop/layout/cubit/home_cubit.dart';
import 'package:courses_workshop/layout/home_screen.dart';
import 'package:courses_workshop/screens/forget_password/forget_password_screen.dart';
import 'package:courses_workshop/screens/login/cubit/login_cubit.dart';
import 'package:courses_workshop/screens/login/cubit/login_states.dart';
import 'package:courses_workshop/screens/register/register_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  final String email;
  final String password;

  LoginScreen({this.email, this.password});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (email != null && password != null) {
      emailController.text = email;
      passwordController.text = password;
    }

    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginStateLoading) {
          buildProgressDialog(
            context: context,
            text: 'please wait ...',
          );
        }

        if (state is LoginStateSuccess) {
          // close the progress dialog in the last state
          Navigator.pop(context);
          HomeCubit.get(context).changeIndex(1);
          // save user access_token
          saveToken(state.token).then((value) {
            if (value) {
              navigateAndFinish(context, HomeScreen());
            } else
              showToast(
                message: 'error while saving a token',
                error: false,
              );
          });
        }

        if (state is LoginStateError) {
          // close the progress dialog in the last state
          Navigator.pop(context);
          buildProgressDialog(
            context: context,
            text: "this account not exist",
            error: true,
          );
        }
      },
      builder: (context, state) {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  writeQuickText(
                    text: "Login",
                    fontSize: 28.0,
                  ),
                  SizedBox(
                    height: 240.0,
                  ),
                  buildDefaultTextField(
                      title: 'Email',
                      hint: 'Sarahsmith@gmail.com',
                      controller: emailController,
                      type: TextInputType.emailAddress),
                  SizedBox(
                    height: 40.0,
                  ),
                  buildDefaultTextField(
                      title: 'Password',
                      hint: '***************',
                      controller: passwordController,
                      isPassword: true,
                      type: TextInputType.visiblePassword),
                  SizedBox(
                    height: 60.0,
                  ),
                  buildDefaultButton(
                      onPressed: () {
                        // save data for validation
                        String email = emailController.text;
                        String password = passwordController.text;

                        if (email.isEmpty || password.isEmpty) {
                          showToast(
                              message: "please enter your data", error: true);
                        } else {
                          // navigateTo(context, LoginScreen());
                          LoginCubit.get(context).login(
                            email: email,
                            password: password,
                          );
                        }
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
                    height: 35.0,
                  ),
                  InkWell(
                    onTap: () {
                      navigateTo(context, ForgetPasswordScreen());
                    },
                    child: Container(
                      width: double.infinity,
                      child: writeQuickText(
                        text: "Forget Password .. ?",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
          ),
        ));
      },
    );
  }
}
