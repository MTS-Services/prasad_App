import 'package:get/get.dart';

import '../controllers/customer_home_controller.dart';

class CustomerHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerHomeController>(
      () => CustomerHomeController(),
    );
  }
}
