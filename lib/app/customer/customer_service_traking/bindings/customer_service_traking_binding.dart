import 'package:get/get.dart';

import '../controllers/customer_service_traking_controller.dart';

class CustomerServiceTrakingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceTrakingController>(
      () => CustomerServiceTrakingController(),
    );
  }
}
