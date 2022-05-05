import 'package:get/get.dart';
import 'package:cookbook_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:cookbook_app/constants/constants.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themePalette = Constants()
        .colorPalette
        .entries
        .firstWhere((element) => element.key == ThemeMode.light)
        .value;
    var navbarColor = themePalette.entries
        .firstWhere((element) => element.key == "navbarBackground")
        .value;
    var bgColor = themePalette.entries
        .firstWhere((element) => element.key == "mainbackground")
        .value;

    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(title: Center(child: Text("Cookbook"))),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: navbarColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
              backgroundColor: navbarColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
              backgroundColor: navbarColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: navbarColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Messages",
              backgroundColor: navbarColor)
        ], showUnselectedLabels: false, showSelectedLabels: false));
  }
}
