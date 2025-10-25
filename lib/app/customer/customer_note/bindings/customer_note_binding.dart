import 'package:get/get.dart';

import '../controllers/customer_note_controller.dart';

class CustomerNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerNoteController>(
      () => CustomerNoteController(),
    );
  }
}
