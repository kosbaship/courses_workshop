import 'package:bloc/bloc.dart';
import 'package:courses_workshop/layout/cubit/home_states.dart';
import 'package:courses_workshop/screens/courses/courses_screen.dart';
import 'package:courses_workshop/screens/profile/profile_screen.dart';
import 'package:courses_workshop/screens/search/search_screen.dart';
import 'package:courses_workshop/screens/settings/settings_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  // list of bodies
  var bodies = [
    SearchScreen(),
    CoursesScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  // current index
  int currentIndex = 1;
  changeIndex(index) {
    currentIndex = index;
    emit(HomeIndexState());
  }
}
