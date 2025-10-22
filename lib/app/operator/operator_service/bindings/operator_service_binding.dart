import 'package:get/get.dart';

import '../controllers/operator_service_controller.dart';

class OperatorServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorServiceController>(
      () => OperatorServiceController(),
    );
  }
}
