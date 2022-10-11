import 'package:get/get.dart';
import 'package:pato_task/app/modules/fix/controllers/fix_controller.dart';
import 'package:pato_task/app/modules/item_details/controllers/item_details_controller.dart';
import 'package:pato_task/app/modules/items/controllers/items_controller.dart';
import 'package:pato_task/app/modules/login/controllers/login_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<FixController>(
      () => FixController(),
    );
    Get.lazyPut<ItemsController>(
      () => ItemsController(),
    );
    Get.lazyPut<ItemDetailsController>(
      () => ItemDetailsController(),
    );
  }
}
