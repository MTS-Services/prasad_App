import 'package:get/get.dart';

import '../controllers/operator_language_controller.dart';

class OperatorLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorLanguageController>(
      () => OperatorLanguageController(),
    );
  }
}
