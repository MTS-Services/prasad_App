import 'package:get/get.dart';

import '../controllers/operator_service_decline_confirm_controller.dart';

class OperatorServiceDeclineConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorServiceDeclineConfirmController>(
      () => OperatorServiceDeclineConfirmController(),
    );
  }
}
