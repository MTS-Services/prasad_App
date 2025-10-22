import 'package:get/get.dart';

import '../controllers/cutomer_all_services_controller.dart';

class CutomerAllServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CutomerAllServicesController>(
      () => CutomerAllServicesController(),
    );
  }
}
