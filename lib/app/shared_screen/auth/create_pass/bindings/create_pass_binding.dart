import 'package:get/get.dart';

import '../controllers/create_pass_controller.dart';

class CreatePassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreatePassController>(
      () => CreatePassController(),
    );
  }
}
