import 'package:get/get.dart';

import '../controllers/operator_certification_controller.dart';

class OperatorCertificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorCertificationController>(
      () => OperatorCertificationController(),
    );
  }
}
