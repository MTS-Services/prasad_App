import 'package:get/get.dart';

import '../controllers/customer_bottom_navi_bar_controller.dart';

class CustomerBottomNaviBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerBottomNaviBarController>(
      () => CustomerBottomNaviBarController(),
    );
  }
}
