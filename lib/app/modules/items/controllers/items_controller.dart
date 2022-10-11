import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pato_task/app/models/items_model_model.dart';

import '../../../backend/api.dart';
import '../../item_details/controllers/item_details_controller.dart';

class ItemsController extends GetxController {
  ItemDetailsController itemDetailsController = Get.find();

  RxList<ItemsModel> items = <ItemsModel>[].obs;
  RxBool isLoading = true.obs;
  final count = 0.obs;

  void getItems() async {
    items.clear();
    isLoading.value = true;
    Data? dataItems = await ApiProvider(httpClient: Dio()).getItems();
    dataItems?.items?.forEach((item) {
      items.add(item);
    });
    isLoading.value = false;
    log('Items=>${dataItems?.items?[0].name}');
  }

  void getItemId(index) {
    itemDetailsController.itemId = items[index].id ?? 0;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
