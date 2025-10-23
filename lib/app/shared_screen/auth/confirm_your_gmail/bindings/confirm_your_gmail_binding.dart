import 'package:get/get.dart';

import '../controllers/confirm_your_gmail_controller.dart';

class ConfirmYourGmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmYourGmailController>(
      () => ConfirmYourGmailController(),
    );
  }
}
