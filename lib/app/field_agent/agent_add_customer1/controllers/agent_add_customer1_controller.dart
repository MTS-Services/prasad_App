import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AgentAddCustomer1Controller extends GetxController {
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
  final selectedCountryCode = RxnString();

  // Text fields
  final firstName = ''.obs;
  final middleName = ''.obs;
  final lastName = ''.obs;
  final alsoKnownAs = ''.obs;
  final phone = ''.obs;
  final email = ''.obs;
  final village = ''.obs;

  // Dropdown setters
  void onDistrictSelected(String? value) => selectedDistrict.value = value;
  void onCountrySelected(String? value) => selectedCountry.value = value;
  void onStateSelected(String? value) => selectedState.value = value;
  void onMandalSelected(String? value) => selectedMandal.value = value;
  void onCountryCodeSelected(String? value) => selectedCountryCode.value = value;

  // Text field setters
  void setFirstName(String value) => firstName.value = value;
  void setMiddleName(String value) => middleName.value = value;
  void setLastName(String value) => lastName.value = value;
  void setAlsoKnownAs(String value) => alsoKnownAs.value = value;
  void setPhone(String value) => phone.value = value;
  void setEmail(String value) => email.value = value;

  // File/image upload
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

  // Optional: validate all fields before moving to next page
  bool validateFields() {
    if (firstName.isEmpty ||
        lastName.isEmpty ||
        phone.isEmpty ||
        selectedDistrict.value == null) {
      return false;
    }
    return true;
  }
}
