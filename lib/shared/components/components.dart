import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:flutter/material.dart';
// =========================== defaultButton
Widget defaultButton ({
  @required Function onPressed,
  @required String text,
  Color textColor = kPrimaryTextColor,
  Color backgroundColor = kPrimaryColor,
  Color borderColor = kPrimaryTextColor,
}) => Container(
  width: double.infinity,
  height: 48.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: backgroundColor,
     border: Border.all(
       width: 3,
       color: borderColor,
     )
),
  child: FlatButton(
    textColor: textColor,
    onPressed: onPressed,
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
          fontSize: 26
      ),
    ),
  ),
);

// =========================== quickCustomText
Widget quickCustomText({
    @required String text,
     double fontSize = 20.0,
     Color color = kDefaultTextColor,
    })=> Text(
    text,
  style: TextStyle(
      color: color,
      fontSize: fontSize
  ),
);

// =========================== headerText
Widget headerText({
  @required String text,
  double fontSize = 38.0,
})=> Padding(
  padding: const EdgeInsets.all(32.0),
  child:   Text(
    text,
    style: TextStyle(
        fontSize: fontSize
    ),
  ),
);

// =========================== navigateTo
void navigateTo(context, widget) =>
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget,),
);
