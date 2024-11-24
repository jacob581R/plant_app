import 'package:get/get.dart';

import '../modules/RootPage/bindings/root_page_binding.dart';
import '../modules/RootPage/views/root_page_view.dart';
import '../modules/Scan/bindings/scan_binding.dart';
import '../modules/Scan/views/scan_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/productdetail/bindings/productdetail_binding.dart';
import '../modules/productdetail/views/productdetail_view.dart';

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
      name: _Paths.SCAN,
      page: () => const ScanView(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTDETAIL,
      page: () => ProductdetailView(),
      binding: ProductdetailBinding(),
    ),

  ];
}
