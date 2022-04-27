import 'package:cookbook_app/controllers/binding.dart';
import 'package:cookbook_app/pages/home.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(name: '/home', page: () => const HomeView(), binding: HomeBinding())
  ];
}
