import 'package:get/get.dart';

import '../item_details_model.dart';

class ItemDetailsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return ItemDetails.fromJson(map);
      if (map is List)
        return map.map((item) => ItemDetails.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ItemDetails?> getItemDetails(int id) async {
    final response = await get('itemdetails/$id');
    return response.body;
  }

  Future<Response<ItemDetails>> postItemDetails(
          ItemDetails itemdetails) async =>
      await post('itemdetails', itemdetails);
  Future<Response> deleteItemDetails(int id) async =>
      await delete('itemdetails/$id');
}
