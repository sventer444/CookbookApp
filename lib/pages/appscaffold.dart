import 'package:get/get.dart';
import 'package:cookbook_app/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:cookbook_app/pages/home.dart';
import 'package:cookbook_app/constants/constants.dart';

class AppScaffold extends GetView<ProfileController> {
  const AppScaffold({Key? key}) : super(key: key);

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

    var bodyContainer = Container(
      child: HomeView(),
    );

    var appSkeleton = Scaffold(
        backgroundColor: bgColor,
        body: bodyContainer,
        appBar: AppBar(title: Center(child: Text("Cookbook"))),
        bottomNavigationBar: BottomNavigationBar(
            items: [
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
            ],
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: setBody));
    return appSkeleton;
  }

  void setBody(int? index) {
    switch (index) {
      case 0:
        break;
      default:
    }
  }
}
