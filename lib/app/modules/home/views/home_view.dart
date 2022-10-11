import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pato_task/app/modules/fix/views/fix_view.dart';
import 'package:pato_task/app/modules/items/views/items_view.dart';
import 'package:pato_task/app/modules/login/views/login_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pato Teach Flutter Assignment'),
          centerTitle: true,
          bottom: TabBar(
            controller: controller.tabController,
            tabs: controller.myTabs,
          ),
        ),
        body: TabBarView(
          controller: controller.tabController,
          children: [
            LoginView(),
            ItemsView(),
            FixView(),
          ],
        ));
  }
}
