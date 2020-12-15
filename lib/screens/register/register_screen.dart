import 'package:courses_workshop/layout/home_screen.dart';
import 'package:courses_workshop/screens/forget_password/forget_password_screen.dart';
import 'package:courses_workshop/screens/login/login_screen.dart';
import 'package:courses_workshop/screens/register/cubit/register_cubit.dart';
import 'package:courses_workshop/screens/register/cubit/register_states.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (BuildContext context, state) {
        if (state is RegisterStateLoading) {
          buildProgress(
            context: context,
            text: 'please wait ...',
          );
        }

        if (state is RegisterStateSuccess) {
          navigateAndFinish(
            context,
            HomeScreen(),
          );
        }

        if (state is RegisterStateError) {
          buildProgress(
            context: context,
            text: state.error.toString(),
          );
        }
      },
      builder: (BuildContext context, state) {
        return Scaffold(
            appBar: AppBar(
              title: quickCustomText(
                  text: "Register", fontSize: 30, color: kPrimaryTextColor),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    defaultTextFormField(
                        title: 'First Name',
                        hint: 'Adel',
                        controller: firstNameController,
                        type: TextInputType.name),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultTextFormField(
                        title: 'Last Name',
                        hint: 'Adham',
                        controller: lastNameController,
                        type: TextInputType.name),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultTextFormField(
                        title: 'Email',
                        hint: 'example@google.com',
                        controller: emailController,
                        type: TextInputType.emailAddress),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultTextFormField(
                        title: 'Password',
                        hint: '***************',
                        controller: passwordController,
                        type: TextInputType.visiblePassword),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultTextFormField(
                        title: 'City',
                        hint: 'Aswan',
                        controller: cityController,
                        type: TextInputType.name),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultButton(
                        onPressed: () {
                          RegisterCubit.get(context).register(
                            first: firstNameController.text,
                            last: lastNameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                            city: cityController.text,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text('Your account is ${emailController.text}'),
                          ));
                        },
                        text: 'sign up'),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultButton(
                        onPressed: () {
                          navigateToAndCloseCurrent(context, LoginScreen());
                        },
                        text: 'login',
                        textColor: kPrimaryColor,
                        borderColor: kPrimaryColor,
                        backgroundColor: kPrimaryTextColor),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () {
                        navigateTo(context, ForgetPasswordScreen());
                      },
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
      },
    );
  }
}
