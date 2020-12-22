import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

// save some user info
// add shared preferences
// declare instance ====================  SharedPreferences
SharedPreferences preferences;

// get instance from the shared preferences class
Future<void> initPref() async {
  preferences = await SharedPreferences.getInstance();
}

// save user token get return type by press setString + ctrl
Future<bool> saveToken(String token) => preferences.setString('token', token);
// get user token
String getToken() => preferences.getString('token');
// remove user token
Future<bool> removeToken() => preferences.remove('token');
//=======================================================
//======================= initialize data source once
void initApp() {
  DioHelper();
}

// =========================== defaultButton
Widget defaultButton(
        {@required Function onPressed,
        @required String text,
        Color textColor = kWhiteColor,
        Color backgroundColor = kLightishPurpleColor,
        Color borderColor = kLightishPurpleColor}) =>
    Container(
      width: double.infinity,
      height: 58.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: backgroundColor,
          border: Border.all(
            width: 3,
            color: borderColor,
          )),
      child: FlatButton(
        textColor: textColor,
        onPressed: onPressed,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: "MontserratRegular",
          ),
        ),
      ),
    );
// =========================== defaultTextFormField
Widget defaultTextField({
  String title = "title",
  String hint = '',
  @required TextEditingController controller,
  @required TextInputType type,
  bool isPassword = false,
}) =>
    Container(
      padding: EdgeInsetsDirectional.only(
        start: 16.0,
        end: 16.0,
        top: 12.0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          quickCustomText(
            text: title,
            fontSize: 12,
            color: kDarkColor,
          ),
          TextFormField(
            controller: controller,
            keyboardType: type,
            obscureText: isPassword,
            decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 16.0, color: kGreyColor),
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
// =========================== logo
Widget logo() => Column(
      children: [
        SizedBox(
          height: 25.0,
        ),
        Image.asset(
          "assets/images/logo_learn.png",
          color: kLightishPurpleColor,
        ),
        SizedBox(
          height: 60.0,
        ),
      ],
    );
// =========================== quickCustomText
Widget quickCustomText(
        {@required String text,
        double fontSize = 16.0,
        Color color = kDarkColor,
        FontWeight fontWeight = FontWeight.normal,
        TextAlign textAlign = TextAlign.center}) =>
    Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        fontFamily: "MontserratRegular",
      ),
    );

// =========================== headerText
Widget headerText(
        {@required String text,
        double fontSize = 32.0,
        Color fontColor = kLightishPurpleColor}) =>
    Column(
      children: [
        SizedBox(
          height: 80.0,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontFamily: "MontserratRegular",
          ),
        ),
      ],
    );

// =========================== navigate To
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
// =========================== navigate To and Close Current
void navigateToAndCloseCurrent(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
// =========================== navigate To and Close Current
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false);

// =========================== buildProgress
void buildProgress({context, text, error = false}) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                if (!error) CircularProgressIndicator(),
                if (!error)
                  SizedBox(
                    width: 20.0,
                  ),
                Expanded(
                  child: Text(
                    text,
                  ),
                ),
              ],
            ),
            if (error) SizedBox(height: 20.0),
            if (error)
              defaultButton(
                onPressed: () => Navigator.pop(context),
                text: "Cancel",
              ),
          ],
        ),
      ),
    );
// ============================ flutter toast
showToast({@required String message, @required bool error}) =>
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: error ? Colors.red : Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);

// ===========================  add app bar
buildAppbar({@required context, @required widget}) => AppBar(
      backgroundColor: kPaleLilacColor,
      leading: GestureDetector(
        child: Icon(
          Icons.keyboard_arrow_left,
          size: 40,
          color: kDarkColor,
        ),
        onTap: () {
          showToast(message: "Under Developing", error: false);
        },
        // onTap: () => Navigator.of(context).pop(),
      ),
      actions: [
        widget,
        SizedBox(
          width: 20.0,
        ),
      ],
      elevation: 0.0,
    );
// ==================================== Custom simple Card
simpleCard({@required String text, @required Icon icon, @required heroTag}) =>
    Container(
      width: 160.0,
      height: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon
          FloatingActionButton(heroTag: heroTag, onPressed: () {}, child: icon),
          SizedBox(
            height: 15,
          ),
          // text
          quickCustomText(text: text)
        ],
      ),
    );

// ========================  circle with icon
circularIcon({@required heroTag, @required Icon icon}) => FloatingActionButton(
      onPressed: () {},
      heroTag: heroTag,
      elevation: 0.0,
      child: icon,
    );
// =============================================== list item in courses
listItem({
  @required heroTag,
  @required titleText,
  @required bodyText,
}) =>
    Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          // left
          Expanded(
            child: circularIcon(
              heroTag: heroTag,
              icon: Icon(
                Icons.school,
                size: 25,
                color: kPaleLilacColor,
              ),
            ),
            flex: 3,
          ),

          // center
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  // style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 3,
                ),
                quickCustomText(
                    text: bodyText,
                    textAlign: TextAlign.start,
                    fontSize: 10,
                    color: kGreyDarkColor),
              ],
            ),
            flex: 6,
          ),
          Expanded(
            child: SizedBox(
              width: 1,
            ),
          ),
          // right
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                quickCustomText(
                  text: "Total ratings",
                  fontSize: 9,
                  // textAlign: TextAlign.start,
                  color: kDarkColor,
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: kYellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: kYellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: kYellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: kYellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: kDarkColor,
                    ),
                  ],
                )
              ],
            ),
            flex: 4,
          ),
        ],
      ),
    );
// ======================================= setting card item
settingsCardItem({
  @required onTap,
  @required text,
}) =>
    InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsetsDirectional.only(start: 20, top: 10, end: 5, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            quickCustomText(
              text: text,
              fontSize: 16,
            ),
            Icon(
              Icons.chevron_right,
              size: 35,
            )
          ],
        ),
      ),
    );
