import 'package:get/get.dart';

class OperatorCertificationController extends GetxController {
  var items = ['Dhaka', 'Chattogram', 'Sylhet', 'Khulna'].obs;
  var selectedValue = RxnString();

  void onItemSelected(String? value) {
    selectedValue.value = value;
  }
}
