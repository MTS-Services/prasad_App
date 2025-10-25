import 'package:get/get.dart';
import 'package:prasad/app/customer/customer_history/controllers/customer_history_controller.dart';
import 'package:prasad/app/customer/customer_home/controllers/customer_home_controller.dart';
import 'package:prasad/app/customer/customer_profile/controllers/customer_profile_controller.dart';
import 'package:prasad/app/customer/customer_service/controllers/customer_service_controller.dart';
import 'package:prasad/app/customer/customer_support/controllers/customer_support_controller.dart';

import '../controllers/customer_bottom_navi_bar_controller.dart';

class CustomerBottomNaviBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerBottomNaviBarController>(
      () => CustomerBottomNaviBarController(),
    );
    Get.lazyPut<CustomerHomeController>(
      () => CustomerHomeController(),
    );
    Get.lazyPut<CustomerServiceController>(
      () => CustomerServiceController(),
    );
    Get.lazyPut<CustomerHistoryController>(
      () => CustomerHistoryController(),
    );
    Get.lazyPut<CustomerSupportController>(
      () => CustomerSupportController(),
    );
    Get.lazyPut<CustomerProfileController>(
      () => CustomerProfileController(),
    );
  }
}
