import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:flutter/material.dart';

// =========================== defaultButton
Widget defaultButton({
  @required Function onPressed,
  @required String text,
  Color textColor = kPrimaryTextColor,
  Color backgroundColor = kPrimaryColor,
  Color borderColor = kPrimaryTextColor,
}) =>
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
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
// =========================== defaultTextFormField
Widget defaultTextFormField({
  String title = "title",
  String hint = '',
  @required TextEditingController controller,
  @required TextInputType type,
}) =>
    Container(
      padding: EdgeInsetsDirectional.only(
        start: 12.0,
        end: 8.0,
        top: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kPrimaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          quickCustomText(
            text: title,
          ),
          TextFormField(
            controller: controller,
            keyboardType: type,
            decoration: InputDecoration(
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
          height: 40.0,
        ),
        Image.asset(
          "assets/images/logo_learn.png",
          color: kPrimaryColor,
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    );
// =========================== quickCustomText
Widget quickCustomText({
  @required String text,
  double fontSize = 20.0,
  Color color = kDefaultTextColor,
  FontWeight fontWeight = FontWeight.normal,
}) =>
    Text(
      text,
      style: TextStyle(
          color: color, fontSize: fontSize, fontWeight: FontWeight.normal),
    );

// =========================== headerText
Widget headerText({
  @required String text,
  double fontSize = 38.0,
  Color fontColor = kPrimaryTextColor,
}) =>
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: fontColor),
      ),
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
