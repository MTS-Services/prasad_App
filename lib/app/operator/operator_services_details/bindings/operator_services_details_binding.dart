import 'package:get/get.dart';

import '../controllers/operator_services_details_controller.dart';

class OperatorServicesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorServicesDetailsController>(
      () => OperatorServicesDetailsController(),
    );
  }
}
