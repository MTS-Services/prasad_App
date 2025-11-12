import 'package:get/get.dart';

class AgentAddCustomer2Controller extends GetxController {
  var items = ["Acres", "Square km"," + km"].obs;
  var serviceItems = ["service 1", "Service 2","Service 3"].obs;
  var selectedValue = RxnString();
  var serviceValue = RxnString();
  void onItemSelected(String? value){
    selectedValue.value = value;
  }
  void serviceItemSelected(String? value){
    serviceValue.value = value;
  }
  final Map<String, List<String>> subServiceMap = {
    "service 1": ["Data 1", "Data 2", "Data 3"],
    "Service 2": ["Entry 1", "Entry 2", "Entry 3"],
    "Service 3": ["Number 1", "Number 2", "Number 3"],
  };

  // Map to store selection state for each subservice
  final Map<String, RxBool> isSelectedMap = {};

  List<String> get subServices => subServiceMap[serviceValue.value] ?? [];

  void onSelectedItem(String? value) {
    if (value != null) {
      serviceValue.value = value;

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
