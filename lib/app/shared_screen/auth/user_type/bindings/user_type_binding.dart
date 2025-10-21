import 'package:get/get.dart';

import '../controllers/user_type_controller.dart';

class UserTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserTypeController>(
      () => UserTypeController(),
    );
  }
}
