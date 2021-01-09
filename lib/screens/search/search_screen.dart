import 'dart:ui';

import 'package:conditional_builder/conditional_builder.dart';
import 'package:courses_workshop/models/courses_model.dart';
import 'package:courses_workshop/screens/search/cubit/search_cubit.dart';
import 'package:courses_workshop/screens/search/cubit/search_states.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocConsumer<SearchCubit, SearchStates>(
          listener: (context, state) {},
          builder: (context, state) {
            List<CoursesModel> list = SearchCubit.get(context).list;
            return ConditionalBuilder(
              condition: state is! SearchStateLoading,
              builder: (context) => ConditionalBuilder(
                condition: state is! SearchStateError,
                builder: (context) => SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 20, end: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        writeQuickText(
                          text: "Search Courses",
                          fontSize: 28,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.only(
                            start: 16.0,
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kWhiteColor,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller:
                                      searchController ?? searchController.text,
                                  onTap: () {},
                                  // controller: ,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 16.0, color: kGreyColor),
                                    hintText: "Start search...",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 50,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: kLightishPurpleColor,
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: MaterialButton(
                                  onPressed: () {
                                    String searchQuery = searchController.text;
                                    if (searchQuery.isEmpty) {
                                      showToast(
                                          message: "search field is empty",
                                          error: false);
                                    } else {
                                      SearchCubit.get(context)
                                          .getCourseWithSearchQuery(
                                              query: '$searchQuery');
                                    }
                                  },
                                  child: Icon(
                                    Icons.search,
                                    color: kWhiteColor,
                                    size: 25,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('You have '),
                            writeQuickText(
                                text: '${list.length}',
                                fontSize: 22,
                                color: kLightishPurpleColor),
                            Text(' result'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) =>
                              buildExpandedCourseItem(
                                  startToday: () {
                                    showToast(
                                        message:
                                            "yes Course price is ${list[index].price}\$",
                                        error: false);
                                  },
                                  startDate:
                                      list[index].startDate ?? '2021-01-01',
                                  price: list[index].price ?? 16.99.toString(),
                                  image: NetworkImage(list[index].image) ??
                                      NetworkImage(
                                          "http://via.placeholder.com/350x150"),
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
                fallback: (context) => SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 20, end: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        writeQuickText(
                          text: "Search Courses",
                          fontSize: 28,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.only(
                            start: 16.0,
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kWhiteColor,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller:
                                      searchController ?? searchController.text,
                                  onTap: () {},
                                  // controller: ,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 16.0, color: kGreyColor),
                                    hintText: "Start search...",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 50,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: kLightishPurpleColor,
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: MaterialButton(
                                  onPressed: () {
                                    String searchQuery = searchController.text;
                                    if (searchQuery.isEmpty) {
                                      showToast(
                                          message: "search field is empty",
                                          error: false);
                                    } else {
                                      SearchCubit.get(context)
                                          .getCourseWithSearchQuery(
                                              query: '$searchQuery');
                                    }
                                  },
                                  child: Icon(
                                    Icons.search,
                                    color: kWhiteColor,
                                    size: 25,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('You have '),
                            writeQuickText(
                                text: 'NO',
                                fontSize: 22,
                                color: kLightishPurpleColor),
                            Text(' result'),
                          ],
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Center(
                          child: writeQuickText(
                              text: 'Course not found',
                              fontSize: 22,
                              color: kGreyColor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              fallback: (context) => Center(child: CircularProgressIndicator()),
            );
          }),
    );
  }
}
