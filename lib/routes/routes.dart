import 'package:cookbook_app/controllers/binding.dart';
import 'package:cookbook_app/pages/home.dart';
import 'package:cookbook_app/pages/appscaffold.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: '/home', page: () => const HomeView(), binding: HomeBinding()),
    GetPage(
        name: '/appscaffold',
        page: () => AppScaffold(),
        binding: ProfileBinding())
  ];
}
