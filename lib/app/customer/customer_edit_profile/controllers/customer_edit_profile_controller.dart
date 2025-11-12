import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerEditProfileController extends GetxController {
  final items = ["Mapping", "Surveying", "Number"];
  final selectedValue = RxnString();
  final Map<String, List<String>> subServiceMap = {
    "Mapping": ["Data 1", "Data 2", "Data 3"],
    "Surveying": ["Entry 1", "Entry 2", "Entry 3"],
    "Number": ["Number 1", "Number 2", "Number 3"],
  };
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
  final Map<String, RxBool> isSelectedMap = {};

  List<String> get subServices => subServiceMap[selectedValue.value] ?? [];

  void onSelectedItem(String? value) {
    if (value != null) {
      selectedValue.value = value;

      // Initialize RxBool for each subService when selectedValue changes
      isSelectedMap.clear();
      for (var sub in subServices) {
        isSelectedMap[sub] = false.obs;
      }
    }
  }
  void checkBoxSelected(String key, bool? value) {
    isSelectedMap[key]?.value = value ?? false;
  }
}
