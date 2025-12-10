import 'package:get/get.dart';

import '../controllers/customer_service_cancel_approval_controller.dart';

class CustomerServiceCancelApprovalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceCancelApprovalController>(
      () => CustomerServiceCancelApprovalController(),
    );
  }
}
