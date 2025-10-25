import 'package:get/get.dart';

import '../controllers/customer_schedule_controller.dart';

class CustomerScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerScheduleController>(
      () => CustomerScheduleController(),
    );
  }
}
