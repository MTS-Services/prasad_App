import 'package:get/get.dart';

import '../controllers/customer_service_location_controller.dart';

class CustomerServiceLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceLocationController>(
      () => CustomerServiceLocationController(),
    );
  }
}
