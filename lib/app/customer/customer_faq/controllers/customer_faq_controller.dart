import 'package:get/get.dart';

class CustomerFaqController extends GetxController {
  var expandedIndex = (-1).obs;

  void setExpandedIndex(int index) {
    expandedIndex.value = index;
  }
}
