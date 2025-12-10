import 'package:get/get.dart';

import '../controllers/operator_service_decline_request_controller.dart';

class OperatorServiceDeclineRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorServiceDeclineRequestController>(
      () => OperatorServiceDeclineRequestController(),
    );
  }
}
