import 'package:get/get.dart';

import '../controllers/operator_operator_bottom_navi_bar_controller.dart';

class OperatorBottomNaviBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorBottomNaviBarController>(
      () => OperatorBottomNaviBarController(),
    );
  }
}
