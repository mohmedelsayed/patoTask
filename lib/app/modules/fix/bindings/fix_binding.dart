import 'package:get/get.dart';

import '../controllers/fix_controller.dart';

class FixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FixController>(
      () => FixController(),
    );
  }
}
