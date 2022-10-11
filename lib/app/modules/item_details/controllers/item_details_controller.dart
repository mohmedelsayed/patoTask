import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pato_task/app/models/item_details_model.dart';

import '../../../backend/api.dart';

class ItemDetailsController extends GetxController {
  RxBool isLoading = true.obs;
  int itemId = 0;
  String type = '';
  String imageUrl = '';

  final count = 0.obs;

  void getItems() async {
    isLoading.value = true;
    ItemDetails? itemDetails =
        await ApiProvider(httpClient: Dio()).getItemDetails(id: itemId);
    type = itemDetails?.type ?? '';
    imageUrl = itemDetails?.imageUrl ?? '';
    isLoading.value = false;
    log('Items=>$itemDetails');
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
