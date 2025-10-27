import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OperatorCertificationController extends GetxController {
  // Text controllers for form fields
  final licenseNumberController = TextEditingController();
  final issueDateController = TextEditingController();
  final expiryDateController = TextEditingController();
  final additionalInfoController = TextEditingController();

  // Dropdown data
  final items = ['Dhaka', 'Chattogram', 'Sylhet', 'Khulna'];
  final selectedValue = RxnString();

  void onItemSelected(String? value) => selectedValue.value = value;

  @override
  void onClose() {
    licenseNumberController.dispose();
    issueDateController.dispose();
    expiryDateController.dispose();
    additionalInfoController.dispose();
    super.onClose();
  }
}
