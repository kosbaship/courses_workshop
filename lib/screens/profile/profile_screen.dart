import 'package:conditional_builder/conditional_builder.dart';
import 'package:courses_workshop/models/user_model.dart';
import 'package:courses_workshop/screens/profile/cubit/profile_cubit.dart';
import 'package:courses_workshop/screens/profile/cubit/profile_states.dart';
import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()..getUserInfo(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
          listener: (context, state) {},
          builder: (context, state) {
            UserModel user = ProfileCubit.get(context).userModel;

            return ConditionalBuilder(
              condition: state is! ProfileStateLoading,
              builder: (context) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: kLightishPurpleColor,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(user.image) ??
                              AssetImage("assets/images/kosba.png"),
                          radius: 75.0,
                          backgroundColor: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Card(),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              user.fullName ?? "Mohamed M. Kosba",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kDarkColor,
                                fontFamily: "MontserratMeduium",
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(
                                Icons.edit_outlined,
                                size: 35.0,
                                color: kLightishPurpleColor,
                              ),
                              onPressed: () {
                                showToast(
                                    message: " wait man we still developing ",
                                    error: true);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      writeQuickText(
                        text: user.email ?? "mohamed.kosba96@gmail.com",
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: drawProfileCard(
                                title: 'My\nCourses',
                                shape: Icon(
                                  Icons.plus_one,
                                  size: 25,
                                  color: kPaleLilacColor,
                                ),
                                function: () {}),
                            flex: 1,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: drawProfileCard(
                                title: 'My\nFavorite',
                                shape: Icon(
                                  Icons.favorite,
                                  size: 25,
                                  color: kPaleLilacColor,
                                ),
                                function: () {}),
                            flex: 1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: drawProfileCard(
                              function: () {},
                              title: 'My\nCart',
                              shape: Icon(
                                Icons.shopping_cart_outlined,
                              ),
                            ),
                            flex: 1,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: drawProfileCard(
                              function: () {},
                              title: 'My\nReviews',
                              shape: Icon(
                                Icons.star_half,
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: drawProfileCard(
                              function: () {},
                              title: 'Invite a\nfriend',
                              shape: Icon(
                                Icons.share,
                              ),
                            ),
                            flex: 1,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: drawProfileCard(
                              function: () {},
                              title: 'Help &\nSupport',
                              shape: Icon(
                                Icons.help_outline,
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //==========================================
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
