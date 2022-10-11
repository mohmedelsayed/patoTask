import 'package:get/get.dart';

import '../modules/fix/bindings/fix_binding.dart';
import '../modules/fix/views/fix_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/item_details/bindings/item_details_binding.dart';
import '../modules/item_details/views/item_details_view.dart';
import '../modules/items/bindings/items_binding.dart';
import '../modules/items/views/items_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

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
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ITEMS,
      page: () => const ItemsView(),
      binding: ItemsBinding(),
    ),
    GetPage(
      name: _Paths.FIX,
      page: () => const FixView(),
      binding: FixBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_DETAILS,
      page: () => const ItemDetailsView(),
      binding: ItemDetailsBinding(),
    ),
  ];
}
