import 'package:get/get.dart';

import '../controllers/gmail_verify_controller.dart';

class GmailVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GmailVerifyController>(
      () => GmailVerifyController(),
    );
  }
}
