import 'package:get/get.dart';

import '../controllers/customer_edit_profile_controller.dart';

class CustomerEditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerEditProfileController>(
      () => CustomerEditProfileController(),
    );
  }
}
