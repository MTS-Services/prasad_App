import 'package:get/get.dart';

class AgentCreateServiceController extends GetxController {
  final servicePrice = ['Admin', 'Agent', 'Self'];
  final industryItems = ['Agriculture', 'Survey', 'Inspection', 'Delivery'];
  final selectedIndustry = RxnString();


  final selectedServicePrice = RxnString();

  void onIndustrySelected(String? value) => selectedIndustry.value = value;


  void onServicePriceSelected(String? value) =>
      selectedServicePrice.value = value;
  final items = ["Mapping", "Surveying", "Number"];
  final selectedValue = RxnString();

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
}
