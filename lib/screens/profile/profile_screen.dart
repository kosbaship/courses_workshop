import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    color: kDarkColor,
                    fontFamily: "MontserratMeduium",
                  ),
                ),
                Icon(Icons.edit)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            quickCustomText(
              text: "mohamed.kosba96@gmail.com",
              fontSize: 12,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                simpleCard(
                    text: 'My\nCourses',
                    icon: Icon(
                      Icons.plus_one,
                      size: 25,
                      color: kPaleLilacColor,
                    ),
                    heroTag: "profileOne"),
                Expanded(
                  child: SizedBox(
                    width: 1,
                  ),
                ),
                simpleCard(
                    text: 'My\nFavorite',
                    icon: Icon(
                      Icons.favorite,
                      size: 25,
                      color: kPaleLilacColor,
                    ),
                    heroTag: "profileTwo"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                simpleCard(
                    text: 'My\Cart',
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 25,
                      color: kPaleLilacColor,
                    ),
                    heroTag: "profileCart"),
                Expanded(
                  child: SizedBox(
                    width: 1,
                  ),
                ),
                simpleCard(
                    text: 'My\nReviews',
                    icon: Icon(
                      Icons.star,
                      size: 25,
                      color: kPaleLilacColor,
                    ),
                    heroTag: "profileReviews"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                simpleCard(
                    text: 'Invite\na friend',
                    icon: Icon(
                      Icons.share,
                      size: 25,
                      color: kPaleLilacColor,
                    ),
                    heroTag: "profileInvite"),
                Expanded(
                  child: SizedBox(
                    width: 1,
                  ),
                ),
                simpleCard(
                    text: 'Help',
                    icon: Icon(
                      Icons.help,
                      size: 25,
                      color: kPaleLilacColor,
                    ),
                    heroTag: "profileHelp"),
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
// quickCustomText(
//   text: "Profile Screen",
//   fontSize: 28,
// ),
