import 'package:get/get.dart';

class CustomerInfo1Controller extends GetxController {
  final districts = ['Dhaka', 'Chattogram', 'Sylhet', 'Khulna'];
  final mandals = ['Mandal 1', 'Mandal 2', 'Mandal 3'];
  final villages = ['Village 1', 'Village 2', 'Village 3'];
  final registeredBy = ['Admin', 'Agent', 'Self'];

  final selectedDistrict = RxnString();
  final selectedMandal = RxnString();
  final selectedVillage = RxnString();
  final selectedRegisteredBy = RxnString();

  void onDistrictSelected(String? value) => selectedDistrict.value = value;
  void onMandalSelected(String? value) => selectedMandal.value = value;
  void onVillageSelected(String? value) => selectedVillage.value = value;
  void onRegisteredBySelected(String? value) =>
      selectedRegisteredBy.value = value;
}
