import 'package:get/get.dart';

import '../controllers/operetor_waiting_confirmation_controller.dart';

class OperetorWaitingConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperetorWaitingConfirmationController>(
      () => OperetorWaitingConfirmationController(),
    );
  }
}
