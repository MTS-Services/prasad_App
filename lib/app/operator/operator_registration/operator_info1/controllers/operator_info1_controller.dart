import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OperatorInfo1Controller extends GetxController {
  // Dropdown data
  final industryItems = ['Agriculture', 'Survey', 'Inspection', 'Delivery'];
  final selectedIndustry = RxnString();

  // TextControllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final serviceRadiusController = TextEditingController();
  final locationController = TextEditingController();

  final subCategories = <String>[].obs;

  void onIndustrySelected(String? value) => selectedIndustry.value = value;

  void addSubCategory(String name) {
    if (name.trim().isNotEmpty) subCategories.add(name.trim());
  }

  void removeSubCategory(int index) {
    subCategories.removeAt(index);
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    serviceRadiusController.dispose();
    locationController.dispose();
    super.onClose();
  }
}
