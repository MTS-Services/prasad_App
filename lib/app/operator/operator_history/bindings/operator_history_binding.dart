import 'package:get/get.dart';

import '../controllers/operator_history_controller.dart';

class OperatorHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorHistoryController>(
      () => OperatorHistoryController(),
    );
  }
}
