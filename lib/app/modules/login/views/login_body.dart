import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pato_task/app/modules/login/controllers/login_controller.dart';

class LoginTab extends GetView<LoginController> {
  LoginTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      /// single scroll view with NeverScrollableScrollPhysics(), to avoid overFlow in design if founded
      return SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.usernameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Username",
                ),
              ),
              TextFormField(
                controller: controller.passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.isObscure.value,
                decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(controller.isObscure.value
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      controller.toggleObscure();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                      if (controller.isValidated()) {
                        controller.performLogin();
                      } else {}
                    },
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('Login'),
                      ),
                    )),
              )
            ],
          ),
        ),
      );
    });
  }
}
