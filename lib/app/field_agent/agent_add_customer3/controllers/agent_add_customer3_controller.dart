import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AgentAddCustomer3Controller extends GetxController {
  final items = ["Mapping", "Surveying", "Number"];
  final selectedValue = RxnString();
  final TextEditingController latitudeController = TextEditingController();

  final Map<String, List<String>> subServiceMap = {
    "Mapping": ["Data 1", "Data 2", "Data 3"],
    "Surveying": ["Entry 1", "Entry 2", "Entry 3"],
    "Number": ["Number 1", "Number 2", "Number 3"],
  };

  // Map to store selection state for each subservice
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

  Future<void> pickFileFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if(file != null){
      latitudeController.text = file.name;
    }
  }
}
