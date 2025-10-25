import 'package:get/get.dart';

import '../controllers/customer_orders_controller.dart';

class CustomerOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerOrdersController>(
      () => CustomerOrdersController(),
    );
  }
}
