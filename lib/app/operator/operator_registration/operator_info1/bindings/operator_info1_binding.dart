import 'package:get/get.dart';

import '../controllers/operator_info1_controller.dart';

class OperatorInfo1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorInfo1Controller>(
      () => OperatorInfo1Controller(),
    );
  }
}
