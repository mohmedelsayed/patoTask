import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pato_task/app/models/items_model_model.dart';
import 'package:pato_task/app/utils/consts/endpoints.dart';
import 'package:pato_task/app/utils/services/local_services.dart';

import '../models/item_details_model.dart';
import '../models/login_model_model.dart';

class ApiProvider {
  /// this is module related to backend requests and errors returning to handle it ib controller and view
  /// base_Url :  https://potatotech.mocklab.io.potato-co.com/api/
  /// author : Mohmed El-Sayed
  /// date : 11 Oct 2022
  final Dio httpClient;
  ApiProvider({required this.httpClient});
  Future<LoginModel?> login({
    required String username,
    required String password,
  }) async {
    /// perform login
    /// link :  https://potatotech.mocklab.io.potato-co.com/api/login
    try {
      var response = await httpClient.post('${baseUrl + loginPath}',
          queryParameters: {"username": username, "password": password});
      if (response.statusCode == 200) {
        ///server response : 200
        final Map<String, dynamic> dataMap =
            json.decode(json.encode(response.data)) as Map<String, dynamic>;
        log("${dataMap}");
        return LoginModel.fromJson(dataMap);
      } else if (response.statusCode == 403) {
        ///server response : 403
        json.decode(json.encode(response.data)) as Map<String, dynamic>;

        return LoginModel.fromJson(response.data);
      }
    } catch (error) {
      LocalServices.showErrorMessages(
          title: 'خطأ', message: 'تأكد من اتصالك بالانترنت');
      log("${error}");
    }
  }

  Future<Data?> getItems() async {
    /// get items
    /// link :  https://potatotech.mocklab.io.potato-co.com/api/items
    try {
      var response = await httpClient.get(
        '${baseUrl + itemsPath}',
      );
      if (response.statusCode == 200) {
        ///server response : 200
        return Data.fromJson(response.data);
      } else {
        LocalServices.showErrorMessages(title: 'خطأ', message: 'هناك خطأ ما');
      }
    } catch (error) {
      LocalServices.showErrorMessages(
          title: 'خطأ', message: 'تأكد من اتصالك بالانترنت');
      log("${error}");
    }
  }

  Future<ItemDetails?> getItemDetails({required int id}) async {
    /// perform get Item Details
    /// link :  https://potatotech.mocklab.io.potato-co.com/api/item?id=id
    try {
      var response = await httpClient.get(
        '${baseUrl + itemDetails + id.toString()}',
      );
      if (response.statusCode == 200) {
        ///server response : 200
        return ItemDetails.fromJson(response.data);
      } else {
        LocalServices.showErrorMessages(
            title: 'خطأ', message: 'تأكد من اتصالك بالانترنت');
      }
    } catch (error) {
      LocalServices.showErrorMessages(
          title: 'خطأ', message: 'تأكد من اتصالك بالانترنت');
      log("${error}");
    }
  }
}
