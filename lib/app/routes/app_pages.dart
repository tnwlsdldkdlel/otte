import 'package:get/get.dart';
import 'package:otte/app/modules/auth/bindings/auth_binding.dart';
import 'package:otte/app/modules/auth/views/login_view.dart';
import 'package:otte/app/modules/home/bindings/home_binding.dart';
import 'package:otte/app/modules/home/views/home_view.dart';
import 'package:otte/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.login;

  static final routes = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
