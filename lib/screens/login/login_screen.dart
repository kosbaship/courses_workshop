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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginStateLoading) {
          buildProgress(
            context: context,
            text: 'please wait ...',
          );
        }

        if (state is LoginStateSuccess) {
          navigateAndFinish(
            context,
            HomeScreen(),
          );
        }

        if (state is LoginStateError) {
          buildProgress(
            context: context,
            text: state.error.toString(),
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
                  quickCustomText(
                    text: "Login",
                    fontSize: 28.0,
                  ),
                  SizedBox(
                    height: 240.0,
                  ),
                  defaultTextField(
                      title: 'Email',
                      hint: 'Sarahsmith@gmail.com',
                      controller: emailController,
                      type: TextInputType.emailAddress),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultTextField(
                      title: 'Password',
                      hint: '***************',
                      controller: passwordController,
                      type: TextInputType.visiblePassword),
                  SizedBox(
                    height: 60.0,
                  ),
                  defaultButton(
                      onPressed: () {
                        // navigateTo(context, LoginScreen());
                        LoginCubit.get(context).login(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      },
                      text: 'login'),
                  SizedBox(
                    height: 25.0,
                  ),
                  defaultButton(
                      onPressed: () {
                        navigateToAndCloseCurrent(context, RegisterScreen());
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
                      child: quickCustomText(
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
