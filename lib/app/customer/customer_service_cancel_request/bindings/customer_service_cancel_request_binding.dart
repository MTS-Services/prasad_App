import 'package:get/get.dart';

import '../controllers/customer_service_cancel_request_controller.dart';

class CustomerServiceCancelRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceCancelRequestController>(
      () => CustomerServiceCancelRequestController(),
    );
  }
}
