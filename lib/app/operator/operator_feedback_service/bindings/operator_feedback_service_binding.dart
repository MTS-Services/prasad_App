import 'package:get/get.dart';

import '../controllers/operator_feedback_service_controller.dart';

class OperatorFeedbackServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorFeedbackServiceController>(
      () => OperatorFeedbackServiceController(),
    );
  }
}
