import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OperatorEditProfileController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final geo1Controller = TextEditingController();
  final geo2Controller = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final mappingController = TextEditingController();
  final serviceController = TextEditingController();
  final oldPasswordController=TextEditingController();

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
    mappingController.text="Mapping & surveying";
    serviceController.text="50 km";
    oldPasswordController.text='****';
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
    mappingController.dispose();
    serviceController.dispose();
    super.onClose();
  }
}
