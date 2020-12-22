import 'package:courses_workshop/shared/colors/common_colors.dart';
import 'package:courses_workshop/shared/components/components.dart';
import 'package:flutter/material.dart';

class SearchScreenSecondLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          simpleCard(
              text: 'Branding',
              icon: Icon(
                Icons.lightbulb_outline,
                size: 25,
                color: kPaleLilacColor,
              ),
              heroTag: "1stBranding"),
          SizedBox(
            width: 10,
          ),
          simpleCard(
              text: 'Design',
              icon: Icon(
                Icons.design_services_outlined,
                size: 25,
                color: kPaleLilacColor,
              ),
              heroTag: "1stDesign"),
          SizedBox(
            width: 10,
          ),
          simpleCard(
              text: 'Web',
              icon: Icon(
                Icons.web_outlined,
                size: 25,
                color: kPaleLilacColor,
              ),
              heroTag: "1stWeb"),
          SizedBox(
            width: 10,
          ),
          simpleCard(
              text: 'Mobile',
              icon: Icon(
                Icons.smartphone_outlined,
                size: 25,
                color: kPaleLilacColor,
              ),
              heroTag: "1stMobile"),
          SizedBox(
            width: 10,
          ),
          simpleCard(
              text: 'Code',
              icon: Icon(
                Icons.code_outlined,
                size: 25,
                color: kPaleLilacColor,
              ),
              heroTag: "1stCode"),
          SizedBox(
            width: 10,
          ),
          simpleCard(
              text: 'Business',
              icon: Icon(
                Icons.business_center_outlined,
                size: 25,
                color: kPaleLilacColor,
              ),
              heroTag: "1stBusiness"),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
