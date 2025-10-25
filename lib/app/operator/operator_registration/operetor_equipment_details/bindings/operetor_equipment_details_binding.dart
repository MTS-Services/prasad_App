import 'package:get/get.dart';

import '../controllers/operetor_equipment_details_controller.dart';

class OperetorEquipmentDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperetorEquipmentDetailsController>(
      () => OperetorEquipmentDetailsController(),
    );
  }
}
