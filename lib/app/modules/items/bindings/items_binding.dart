import 'package:get/get.dart';
import 'package:pato_task/app/modules/item_details/controllers/item_details_controller.dart';

import '../controllers/items_controller.dart';

class ItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemsController>(
      () => ItemsController(),
    );
    Get.lazyPut<ItemDetailsController>(
      () => ItemDetailsController(),
    );
  }
}
