import 'package:flutter/material.dart';

class CategoriesModel {
  String title;
  IconData iconData;

  CategoriesModel(this.title, this.iconData);
}

List<CategoriesModel> categories = [
  CategoriesModel('Branding', Icons.lightbulb_outline),
  CategoriesModel('Design', Icons.design_services_outlined),
  CategoriesModel('Web', Icons.web_outlined),
  CategoriesModel('Mobile', Icons.smartphone_outlined),
  CategoriesModel(
    'Code',
    Icons.code_outlined,
  ),
  CategoriesModel('Business', Icons.business_center_outlined),
];
