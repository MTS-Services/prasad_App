import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OperetorEquipmentDetailsController extends GetxController {
  var items = ['Dhaka', 'Chattogram', 'Sylhet', 'Khulna'].obs;
  var selectedValue = RxnString();
  TextEditingController maintenanceDateController = TextEditingController();

  void onItemSelected(String? value) {
    selectedValue.value = value;
  }
}
