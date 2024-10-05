import 'package:get/get.dart';
import 'package:perpustakaan/app/login/views/login_view.dart';
import 'package:perpustakaan/app/signin/views/signin_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(name: _Paths.SIGN, page: () => SigninView()),
    GetPage(name: _Paths.LOGIN, page: () => LoginView()),
  ];
}
