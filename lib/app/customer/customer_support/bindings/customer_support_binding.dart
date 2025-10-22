import 'package:get/get.dart';

import '../controllers/customer_support_controller.dart';

class CustomerSupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerSupportController>(
      () => CustomerSupportController(),
    );
  }
}
