import 'package:get/get.dart';

import '../controllers/cutomer_notification_controller.dart';

class CutomerNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CutomerNotificationController>(
      () => CutomerNotificationController(),
    );
  }
}
