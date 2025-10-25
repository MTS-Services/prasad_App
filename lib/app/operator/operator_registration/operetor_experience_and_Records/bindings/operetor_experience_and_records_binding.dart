import 'package:get/get.dart';

import '../controllers/operetor_experience_and_records_controller.dart';

class OperetorExperienceAndRecordsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OperetorExperienceAndRecordsController>(
      () => OperetorExperienceAndRecordsController(),
    );
  }
}
