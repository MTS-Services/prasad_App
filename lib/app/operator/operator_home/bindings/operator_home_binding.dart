import 'package:get/get.dart';

import '../controllers/operator_home_controller.dart';

class OperatorHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorHomeController>(
      () => OperatorHomeController(),
    );
  }
}
