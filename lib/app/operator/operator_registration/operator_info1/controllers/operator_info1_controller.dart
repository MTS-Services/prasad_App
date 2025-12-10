import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class OperatorInfo1Controller extends GetxController {
  // Dropdown data
  // Dropdown items
  final districts = ['Dhaka', 'Chattogram', 'Sylhet', 'Khulna'];
  final country = ['Dhaka', 'Chattogram', 'Sylhet', 'Khulna'];
  final state = ['Dhaka', 'Chattogram', 'Sylhet', 'Khulna'];
  final mandals = ['Mandal 1', 'Mandal 2', 'Mandal 3'];
  final countryCode = ['+91', '+11', '+57'];

  // Selected values
  final selectedDistrict = RxnString();
  final selectedCountry = RxnString();
  final selectedState = RxnString();
  final selectedMandal = RxnString();
  final selectedcountryCode = RxnString();

  void onDistrictSelected(String? value) => selectedDistrict.value = value;
  void onCountrySelected(String? value) => selectedCountry.value = value;
  void onStateSelected(String? value) => selectedState.value = value;
  void onMandalSelected(String? value) => selectedMandal.value = value;
  void onCountryCodeSelected(String? value) =>
      selectedcountryCode.value = value;

  final industryItems = ['Agriculture', 'Survey', 'Inspection', 'Delivery'];
  final selectedIndustry = RxnString();

  // TextControllers
  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
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
    middleNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    serviceRadiusController.dispose();
    locationController.dispose();
    super.onClose();
  }

  final Rx<File?> selectedImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  // Pick image from gallery
  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
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

  final items = ["Mapping", "Surveying", "Number"];

  final selectedValue = RxnString();

  final Map<String, List<String>> subServiceMap = {
    "Mapping": ["Data 1", "Data 2", "Data 3"],
    "Surveying": ["Entry 1", "Entry 2", "Entry 3"],
    "Number": ["Number 1", "Number 2", "Number 3"],
  };

  // Map to store checkbox states
  final Map<String, RxBool> isSelectedMap = {};

  List<String> get subServices =>
      subServiceMap[selectedValue.value] ?? [];

  void onSelectedItem(String? value) {
    if (value == null) return;

    selectedValue.value = value;

    // Reset selections
    isSelectedMap.clear();
    for (var sub in subServices) {
      isSelectedMap[sub] = false.obs;
    }
  }

  void checkBoxSelected(String key, bool value) {
    isSelectedMap[key]?.value = value;
  }
}
