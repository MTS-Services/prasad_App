import 'package:get/get.dart';

import '../controllers/customer_info1_controller.dart';

class CustomerInfo1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerInfo1Controller>(
      () => CustomerInfo1Controller(),
    );
  }
}
