import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  late final TabController tabController;
  List<Tab> myTabs = [
    Tab(
      text: 'Login',
    ),
    Tab(
      text: 'Items',
    ),
    Tab(
      text: 'Fix',
    ),
  ];
  final count = 0.obs;
  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
