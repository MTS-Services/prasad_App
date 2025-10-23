import 'package:get/get.dart';

import '../controllers/recovery_pass_controller.dart';

class RecoveryPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecoveryPassController>(
      () => RecoveryPassController(),
    );
  }
}
