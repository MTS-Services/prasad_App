import 'package:get/get.dart';

import '../controllers/operator_edit_profile_controller.dart';

class OperatorEditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorEditProfileController>(
      () => OperatorEditProfileController(),
    );
  }
}
