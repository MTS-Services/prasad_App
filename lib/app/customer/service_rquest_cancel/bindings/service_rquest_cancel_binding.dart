import 'package:get/get.dart';

import '../controllers/service_rquest_cancel_controller.dart';

class ServiceRquestCancelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceRquestCancelController>(
      () => ServiceRquestCancelController(),
    );
  }
}
