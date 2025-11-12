import 'package:get/get.dart';

import '../controllers/fingure_print_controller.dart';

class FingurePrintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FingurePrintController>(
      () => FingurePrintController(),
    );
  }
}
