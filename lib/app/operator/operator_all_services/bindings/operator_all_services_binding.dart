import 'package:get/get.dart';

import '../controllers/operator_all_services_controller.dart';

class OperatorAllServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorAllServicesController>(
      () => OperatorAllServicesController(),
    );
  }
}
