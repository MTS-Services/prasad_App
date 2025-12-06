import 'package:get/get.dart';

import '../controllers/auth_language_controller.dart';

class AuthLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthLanguageController>(
      () => AuthLanguageController(),
    );
  }
}
