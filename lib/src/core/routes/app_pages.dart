import 'package:auth_print/src/pages/main/view.dart';
import 'package:auth_print/src/pages/splash/view.dart';
import 'package:get/get.dart';

part 'app_routes.dart'; // include the part here


class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(name: _Paths.splash, page: () => SplashView()),
    GetPage(name: _Paths.home, page: () => HomeView()),

  ];
}