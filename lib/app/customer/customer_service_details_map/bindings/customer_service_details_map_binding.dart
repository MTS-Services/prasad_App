import 'package:get/get.dart';

import '../controllers/customer_service_details_map_controller.dart';

class CustomerServiceDetailsMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceDetailsMapController>(
      () => CustomerServiceDetailsMapController(),
    );
  }
}
