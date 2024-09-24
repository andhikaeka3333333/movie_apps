import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final username = ''.obs;
  final password = ''.obs;

  void login() {
    if (username.value == "mbappe" && password.value == "admin") {
      Get.offNamed('/dashboard');
    } else {
      Get.snackbar(
        "WARNING",
        "Username or password is incorrect !",
        icon: Icon(Icons.warning),
      );
    }
  }
}
