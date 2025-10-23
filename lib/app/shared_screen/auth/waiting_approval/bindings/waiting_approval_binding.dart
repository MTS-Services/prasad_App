import 'package:get/get.dart';

import '../controllers/waiting_approval_controller.dart';

class WaitingApprovalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaitingApprovalController>(
      () => WaitingApprovalController(),
    );
  }
}
