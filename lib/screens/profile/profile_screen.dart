import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                backgroundImage: AssetImage("assets/images/kosba.png"),
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
                Text(
                  "Mohamed M. Kosba",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kDarkColor,
                    fontFamily: "MontserratMeduium",
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.edit_outlined,
                    size: 18.0,
                    color: kLightishPurpleColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            buildQuickText(
              text: "mohamed.kosba96@gmail.com",
              fontSize: 12,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: buildProfileCard(
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
                  child: buildProfileCard(
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
                  child: buildProfileCard(
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
                  child: buildProfileCard(
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
                  child: buildProfileCard(
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
                  child: buildProfileCard(
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
    );
  }
}
