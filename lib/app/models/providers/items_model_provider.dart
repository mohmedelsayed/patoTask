import 'package:get/get.dart';

import '../items_model_model.dart';

class ItemsModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return ItemsModel.fromJson(map);
      if (map is List)
        return map.map((item) => ItemsModel.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ItemsModel?> getItemsModel(int id) async {
    final response = await get('itemsmodel/$id');
    return response.body;
  }

  Future<Response<ItemsModel>> postItemsModel(ItemsModel itemsmodel) async =>
      await post('itemsmodel', itemsmodel);
  Future<Response> deleteItemsModel(int id) async =>
      await delete('itemsmodel/$id');
}
