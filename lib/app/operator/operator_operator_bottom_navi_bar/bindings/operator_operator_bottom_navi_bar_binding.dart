import 'package:get/get.dart';
import 'package:prasad/app/operator/operator_home/controllers/operator_home_controller.dart';
import 'package:prasad/app/operator/operator_payment/controllers/operator_payment_controller.dart';
import 'package:prasad/app/operator/operator_service/controllers/operator_service_controller.dart';

import '../controllers/operator_operator_bottom_navi_bar_controller.dart';

class OperatorBottomNaviBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperatorBottomNaviBarController>(
      () => OperatorBottomNaviBarController(),
    );
    Get.lazyPut<OperatorHomeController>(
      () => OperatorHomeController(),
    );
    Get.lazyPut<OperatorServiceController>(
      () => OperatorServiceController(),
    );
    Get.lazyPut<OperatorHomeController>(
      () => OperatorHomeController(),
    );
    Get.lazyPut<OperatorPaymentController>(
      () => OperatorPaymentController(),
    );
    Get.lazyPut<OperatorPaymentController>(
      () => OperatorPaymentController(),
    );
  }
}
