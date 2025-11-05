import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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
  final Rx<File?> selectedImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  // Pick image from gallery
  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }

  // Pick image from camera (optional)
  Future<void> takePhoto() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      selectedImage.value = File(photo.path);
    }
  }
}
