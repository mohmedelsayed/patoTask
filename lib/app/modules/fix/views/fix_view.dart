import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/fix_controller.dart';

class FixView extends GetView<FixController> {
  const FixView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'FixView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
