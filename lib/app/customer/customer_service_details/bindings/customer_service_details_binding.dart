import 'package:get/get.dart';

import '../controllers/customer_service_details_controller.dart';

class CustomerServiceDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceDetailsController>(
      () => CustomerServiceDetailsController(),
    );
  }
}
