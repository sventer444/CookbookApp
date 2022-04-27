import 'dart:math';
import 'package:cookbook_app/routes/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cookbook_app/constants/constants.dart';

void main() {
  var themePalette = Constants()
      .colorPalette
      .entries
      .firstWhere((element) => element.key == ThemeMode.light)
      .value;
  var mainHeader = themePalette.entries
      .firstWhere((element) => element.key == "mainheader")
      .value;

  runApp(GetMaterialApp(
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: mainHeader),
      getPages: AppPages.routes));
}
