import 'package:get/get.dart';

import '../modules/booking/booking_binding.dart';
import '../modules/booking/booking_screen.dart';
import '../modules/dashboard/dashboard_binding.dart';
import '../modules/dashboard/dashboard_screen.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';
import '../modules/property/property_binding.dart';
import '../modules/property/property_screen.dart';
import '../modules/signup/sign_up_binding.dart';
import '../modules/signup/sign_up_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.PROPERTY,
      page: () => const PropertyScreen(),
      binding: PropertyBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING,
      page: () => const BookingScreen(),
      binding: BookingBinding(),
    ),
  ];
}
