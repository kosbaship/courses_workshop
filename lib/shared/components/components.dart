import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/network/remote/dio_helper.dart';
import 'package:courses_workshop/shared/styles/style.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences preferences;
Future<void> initPref() async {
  preferences = await SharedPreferences.getInstance();
}

Future<bool> saveToken(String token) => preferences.setString('token', token);
String getToken() => preferences.getString('token');
Future<bool> removeToken() => preferences.remove('token');

void initApp() {
  DioHelper();
}

Widget buildDefaultButton(
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

Widget buildDefaultTextField({
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
          buildQuickText(
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

Widget drawLogo() => Column(
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

Widget buildQuickText(
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

Widget buildMainHeader(
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

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
void navigateToReplaceMe(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false);

void buildProgressDialog({context, text, error = false}) => showDialog(
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
              buildDefaultButton(
                onPressed: () => Navigator.pop(context),
                text: "Cancel",
              ),
          ],
        ),
      ),
    );

showToast({@required String message, @required bool error}) =>
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: error ? Colors.red : Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);

buildAppbar(
        {@required context, @required actionWidget, @required leadingWidget}) =>
    AppBar(
      backgroundColor: kPaleLilacColor,
      leading: leadingWidget,
      actions: [
        actionWidget,
        SizedBox(
          width: 20.0,
        ),
      ],
      elevation: 0.0,
    );

buildProfileCard(
        {@required String title, @required Widget shape, @required function}) =>
    GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: 140.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundColor: kWhiteColor,
              backgroundColor: kLightishPurpleColor,
              radius: 30.0,
              child: shape,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title.toString(),
              textAlign: TextAlign.center,
              style: kBlack16Bold().copyWith(
                fontFamily: "MontserratRegular",
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );

drawSettingsCardItem({
  @required onTap,
  @required text,
}) =>
    ListTile(
      tileColor: Colors.white,
      onTap: onTap,
      title: Text(
        text.toString(),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14.0,
      ),
    );

Widget buildDetailedCourseItem({
  @required Function startToday,
  @required double price,
  @required Widget widget,
  @required String title,
  @required String description,
  bool initiallyExpanded = false,
}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: ExpansionTileCard(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        finalPadding: EdgeInsets.zero,
        baseColor: kWhiteColor,
        expandedColor: kWhiteColor,
        initiallyExpanded: initiallyExpanded,
        elevation: 0.0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: widget,
              radius: 25.0,
              backgroundColor: kLightishPurpleColor,
              foregroundColor: kWhiteColor,
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: kGrey16Bold(),
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemSize: 12.0,
                        ignoreGestures: true,
                        itemPadding: EdgeInsets.zero,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: kYellowColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: kGrey12(),
                  ),
                ],
              ),
            ),
          ],
        ),
        onExpansionChanged: (value) {},
        children: <Widget>[
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: buildQuickText(
                            textAlign: TextAlign.start,
                            text: "32 Lectures",
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: buildQuickText(
                            textAlign: TextAlign.end,
                            text: "64 h, 16 m",
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    buildQuickText(
                        text: "This course includes",
                        fontSize: 12,
                        textAlign: TextAlign.start),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.question_answer_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  buildQuickText(
                                    text: "24 Quizzes",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.file_copy_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  buildQuickText(
                                    text: "16 Support files",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.question_answer_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  buildQuickText(
                                    text: "8 Article",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.loop_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  buildQuickText(
                                    text: "Full Time Access",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.smartphone_outlined,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  buildQuickText(
                                    text: "Mobile, Desktop",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_indent_increase_sharp,
                                    size: 20,
                                    color: kDarkColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  buildQuickText(
                                    text: "Certificate",
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildQuickText(
                            text: "Price",
                            fontSize: 10,
                            textAlign: TextAlign.start),
                        buildQuickText(
                            text: "\$$price",
                            fontSize: 20,
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 160,
                  height: 46.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.zero,
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.circular(16.0),
                    ),
                    color: kLightishPurpleColor,
                  ),
                  child: Center(
                    child: MaterialButton(
                      onPressed: startToday,
                      child: buildQuickText(
                        text: "Start Today",
                        color: kWhiteColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
