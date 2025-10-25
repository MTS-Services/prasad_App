import 'package:get/get.dart';

import '../controllers/customer_complete_service_details_controller.dart';

class CustomerCompleteServiceDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerCompleteServiceDetailsController>(
      () => CustomerCompleteServiceDetailsController(),
    );
  }
}
