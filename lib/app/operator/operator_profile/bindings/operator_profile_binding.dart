import 'package:get/get.dart';

import '../controllers/operator_profile_controller.dart';

class OperatorProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorProfileController>(
      () => OperatorProfileController(),
    );
  }
}
