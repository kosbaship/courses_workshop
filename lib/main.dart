import 'package:courses_workshop/screens/login/cubit/login_cubit.dart';
import 'package:courses_workshop/screens/register/cubit/register_cubit.dart';
import 'package:courses_workshop/screens/welcome/welcome_screen.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout/cubit/home_cubit.dart';
import 'layout/home_screen.dart';

main() async {
  // requierd for main extras
  WidgetsFlutterBinding.ensureInitialized();
  var widget;
  await initPref().then((value) {
    if (getToken() != null && getToken().length > 0) {
      widget = HomeScreen();
    } else {
      widget = WelcomeScreen();
    }
  });

  runApp(MyApp(widget));
}

class MyApp extends StatelessWidget {
  final widget;

  const MyApp(this.widget);

  @override
  Widget build(BuildContext context) {
    // create the database instance
    initApp();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Courses',
        theme: ThemeData(
            fontFamily: "MontserratRegular",
            scaffoldBackgroundColor: kPaleLilacColor,
            primaryColor: kLightishPurpleColor,
            accentColor: kLightishPurpleColor),
        home: widget,
      ),
    );
  }
}
