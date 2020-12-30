import 'package:conditional_builder/conditional_builder.dart';
import 'package:courses_workshop/models/category_model.dart';
import 'package:courses_workshop/models/courses_model.dart';
import 'package:courses_workshop/screens/courses/cubit/courses_cubit.dart';
import 'package:courses_workshop/screens/courses/cubit/courses_states.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this screen designed in three layers
    return BlocProvider(
      create: (context) => CoursesCubit()..getCourses(),
      child: BlocConsumer<CoursesCubit, CoursesStates>(
          listener: (context, state) {},
          builder: (context, state) {
            List<CoursesModel> list = CoursesCubit.get(context).list;

            return ConditionalBuilder(
              condition: state is! CoursesStateLoading,
              builder: (context) => SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // this is the title
                      writeQuickText(
                        text: "Courses",
                        textAlign: TextAlign.start,
                        fontSize: 28,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 155,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) =>
                              drawCategoryCard(categories[index]),
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(
                            width: 20.0,
                          ),
                          itemCount: categories.length,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) =>
                            buildExpandedCourseItem(
                                startToday: () {
                                  showToast(
                                      message:
                                          " yes item price is ${list[index].price.toDouble()} ",
                                      error: false);
                                },
                                price: list[index].price.toDouble() ?? 16.99,
                                widget: Icon(Icons.work),
                                title: list[index].title ?? "Wordpress",
                                description: list[index].description ??
                                    "Create your own website from scratch ",
                                initiallyExpanded: false),
                        itemCount: list.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(
                          height: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              fallback: (context) => Center(child: CircularProgressIndicator()),
            );
          }),
    );
  }
}
