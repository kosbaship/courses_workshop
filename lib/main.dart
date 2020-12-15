import 'package:courses_workshop/screens/login/cubit/login_cubit.dart';
import 'package:courses_workshop/screens/register/cubit/register_cubit.dart';
import 'package:courses_workshop/screens/welcome/welcome_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shared/network/remote/dio_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create the database instance
    DioHelper();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Courses',
        theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryBackgroundColor,
          primarySwatch: kPrimaryColor,
        ),
        home: WelcomeScreen(),
      ),
    );
  }
}
