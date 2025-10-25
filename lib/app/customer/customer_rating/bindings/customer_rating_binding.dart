import 'package:get/get.dart';

import '../controllers/customer_rating_controller.dart';

class CustomerRatingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerRatingController>(
      () => CustomerRatingController(),
    );
  }
}
