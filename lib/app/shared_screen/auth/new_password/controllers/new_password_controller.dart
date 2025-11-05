import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var check = false.obs;

  @override
  void onClose() {
      passwordController.dispose();
      confirmPasswordController.dispose();
    super.onClose();
  }
  void showPassword(bool? value){
    check.value = value ?? false;
  }
}
