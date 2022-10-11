import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pato_task/app/backend/api.dart';
import 'package:pato_task/app/models/login_model_model.dart';
import 'package:pato_task/app/utils/services/local_services.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isObscure = false.obs;
  final count = 0.obs;

  void performLogin() async {
    LoginModel? loginModel = await ApiProvider(httpClient: Dio()).login(
        username: usernameController.text, password: passwordController.text);
    if (loginModel?.message?.contains('success') ?? false) {
      LocalServices.showSuccessMessages(
          title: 'نجاح', message: 'نجح تسجيل الدخول');
    } else {
      LocalServices.showErrorMessages(
          title: 'فشل تسجيل الدخول', message: 'من فضلك تأكد من من البيانات');
    }
  }

  bool isValidated() {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      return true;
    } else {
      LocalServices.showErrorMessages(
          title: 'لم تتم العمليه',
          message: 'من فضلك تأكد من ادخال اليوزر والباسوورد');
      return false;
    }
  }

  void toggleObscure() {
    isObscure.value = !isObscure.value;
  }

  @override
  void onInit() {
    // usernameController.text = 'potatotech';
    // passwordController.text = '123456';
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
