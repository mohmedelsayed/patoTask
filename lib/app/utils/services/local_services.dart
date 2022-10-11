import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalServices {
  static SnackbarController showErrorMessages(
      {required String title, required String message}) {
    return Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        titleText: Text(
          title,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        messageText: Text(
          message,
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        colorText: Colors.grey[500],
        borderRadius: 8,
        margin: EdgeInsets.all(16));
  }

  static SnackbarController showSuccessMessages(
      {required String title, required String message}) {
    return Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        titleText: Text(
          title,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        messageText: Text(
          message,
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        colorText: Colors.grey[500],
        borderRadius: 8,
        margin: EdgeInsets.all(16));
  }
}
