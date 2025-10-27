import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OperatorPaymentController extends GetxController {
  RxInt selectedIndex = (-1).obs; // -1 means none selected
  RxInt payIndex = 0.obs; // -1 means none selected
  final pinController = TextEditingController();

  void selectAccount(int index) {
    selectedIndex.value = index;
  }

  bool isSelected(int index) {
    return selectedIndex.value == index;
  }
}
