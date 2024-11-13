import 'package:get/get.dart';

import '../modules/CartPage/bindings/cart_page_binding.dart';
import '../modules/CartPage/views/cart_page_view.dart';
import '../modules/FavouritePage/bindings/favourite_page_binding.dart';
import '../modules/FavouritePage/views/favourite_page_view.dart';
import '../modules/HomePage/bindings/home_page_binding.dart';
import '../modules/HomePage/views/home_page_view.dart';
import '../modules/ProfilePage/bindings/profile_page_binding.dart';
import '../modules/ProfilePage/views/profile_page_view.dart';
import '../modules/RootPage/bindings/root_page_binding.dart';
import '../modules/RootPage/views/root_page_view.dart';
import '../modules/Scan/bindings/scan_binding.dart';
import '../modules/Scan/views/scan_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ROOT_PAGE,
      page: () => const RootPageView(),
      binding: RootPageBinding(),
      children: [
        GetPage(
          name: _Paths.ROOT_PAGE,
          page: () => const RootPageView(),
          binding: RootPageBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE_PAGE,
      page: () => const FavouritePageView(),
      binding: FavouritePageBinding(),
    ),
    GetPage(
      name: _Paths.CART_PAGE,
      page: () => const CartPageView(),
      binding: CartPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.SCAN,
      page: () => const ScanView(),
      binding: ScanBinding(),
    ),
  ];
}
