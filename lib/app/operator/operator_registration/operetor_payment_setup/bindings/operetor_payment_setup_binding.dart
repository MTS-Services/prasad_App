import 'package:get/get.dart';

import '../controllers/operetor_payment_setup_controller.dart';

class OperetorPaymentSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperetorPaymentSetupController>(
      () => OperetorPaymentSetupController(),
    );
  }
}
