import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AgentEditProfileController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final oldPasswordController=TextEditingController();

  @override
  void onInit() {
    super.onInit();
    nameController.text = "Prashad Shikdar";
    phoneController.text = "9898";
    emailController.text = "example@gmail.com";
    oldPasswordController.text='****';
    passwordController.text = "*********";
    confirmPasswordController.text = "*********";
  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

}
