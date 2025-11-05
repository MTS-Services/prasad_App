import 'package:get/get.dart';

class UserTypeController extends GetxController {
  var selectedType = ''.obs;

  void selectType(String type) {
    selectedType.value = type;
  }
}
