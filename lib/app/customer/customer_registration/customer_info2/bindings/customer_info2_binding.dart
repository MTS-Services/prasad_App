import 'package:get/get.dart';

import '../controllers/customer_info2_controller.dart';

class CustomerInfo2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerInfo2Controller>(
      () => CustomerInfo2Controller(),
    );
  }
}
