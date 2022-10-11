import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pato_task/app/modules/item_details/bindings/item_details_binding.dart';
import 'package:pato_task/app/modules/item_details/views/item_details_view.dart';
import 'package:pato_task/app/modules/items/views/product_item.dart';

import '../controllers/items_controller.dart';

class ItemsView extends GetView<ItemsController> {
  const ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getItems();
    return Obx(() {
      return Scaffold(
        body: controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : controller.items.isNotEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height * 0.80,
                        width: Get.width,
                        child: ListView.separated(
                          itemBuilder: (ctx, index) {
                            return ProductItem(
                              name: controller.items[index].name.toString(),
                              price: controller.items[index].price ?? 0.0,
                              onTap: () {
                                controller.getItemId(index);
                                Get.to(ItemDetailsView(),
                                    binding: ItemDetailsBinding());
                              },
                            );
                          },
                          itemCount: controller.items.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              height: 20,
                              color: Colors.black,
                            );
                          },
                        ),
                      ),
                      /*ElevatedButton(
                    onPressed: () async {
                      //TODO Implement
                    },
                    child: const Text('Load items'),
                  )*/
                    ],
                  )
                : Center(
                    child: Text('Error Widget'),
                  ),
      );
    });
  }
}
