import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
// ============================ Back ButtonBar
Widget backButton(context) => Padding(
      padding: EdgeInsetsDirectional.only(start: 6.0),
      child: Column(
        children: [
          SizedBox(
            height: 4.0,
          ),
          IconButton(
            padding: EdgeInsetsDirectional.only(start: 0.0),
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 40,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
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
