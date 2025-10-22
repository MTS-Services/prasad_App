import 'package:get/get.dart';

import '../controllers/operator_payment_controller.dart';

class OperatorPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorPaymentController>(
      () => OperatorPaymentController(),
    );
  }
}
