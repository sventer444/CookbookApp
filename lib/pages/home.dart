import 'package:get/get.dart';
import 'package:cookbook_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:cookbook_app/constants/constants.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Home Page"));
  }
}
