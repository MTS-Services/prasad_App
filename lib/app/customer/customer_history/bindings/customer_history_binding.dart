import 'package:get/get.dart';

import '../controllers/customer_history_controller.dart';

class CustomerHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerHistoryController>(
      () => CustomerHistoryController(),
    );
  }
}
