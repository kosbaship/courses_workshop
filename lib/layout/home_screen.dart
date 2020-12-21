import 'package:courses_workshop/layout/cubit/home_cubit.dart';
import 'package:courses_workshop/layout/cubit/home_states.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        // used more than once
        var currentIndex = HomeCubit.get(context).currentIndex;

        return Scaffold(
          appBar: buildAppbar(
            context: context,
            widget: Icon(
              Icons.notifications_none,
              size: 30,
              color: kDarkColor,
            ),
          ),
          body: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            // set the widget to match the index
            child: HomeCubit.get(context).bodies[currentIndex],
          ),
          bottomNavigationBar: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  25.0,
                ),
                topRight: Radius.circular(
                  25.0,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: kGreyColor.withOpacity(0.3),
                  spreadRadius: 10,
                  blurRadius: 15,
                ),
              ],
            ),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                  ),
                  label: 'Courses',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    OMIcons.person,
                  ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    OMIcons.settings,
                  ),
                  label: 'Settings',
                ),
              ],
              backgroundColor: Colors.transparent,
              onTap: (index) {
                HomeCubit.get(context).changeIndex(index);
              },
              // current index match this index
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              elevation: 0.0,
            ),
          ),
        );
      },
    );
  }
}
