import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerEditProfileController extends GetxController {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final geo1Controller = TextEditingController();
  final geo2Controller = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    nameController.text = "Prashad Shikdar";
    phoneController.text = "9898";
    emailController.text = "example@gmail.com";
    geo1Controller.text = "28.4119N";
    geo2Controller.text = "28.4119N";
    passwordController.text = "*********";
    confirmPasswordController.text = "*********";
  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    geo1Controller.dispose();
    geo2Controller.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

}
