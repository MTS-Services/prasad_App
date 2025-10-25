import 'package:get/get.dart';

import '../controllers/operator_drone_details_controller.dart';

class OperatorDroneDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorDroneDetailsController>(
      () => OperatorDroneDetailsController(),
    );
  }
}
