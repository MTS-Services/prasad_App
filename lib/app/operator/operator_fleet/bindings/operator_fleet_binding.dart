import 'package:get/get.dart';

import '../controllers/operator_fleet_controller.dart';

class OperatorFleetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorFleetController>(
      () => OperatorFleetController(),
    );
  }
}
