import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  const ItemDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getItems();
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        return Center(
            child: controller.isLoading.value
                ? CircularProgressIndicator()
                : controller.imageUrl.isNotEmpty
                    ? Column(
                        children: [
                          Image.network(controller.imageUrl ?? ''),
                          Text(controller.type ?? ''),
                          //TODO Implement Related items List
                        ],
                      )
                    : Center(
                        child: Text('Error Widget'),
                      ));
      }),
    );
  }
}
